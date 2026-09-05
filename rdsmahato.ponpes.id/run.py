#!/usr/bin/env python
"""
Script Management untuk Production rdsmahato.ponpes.id
Digunakan untuk setup, maintenance, dan cek status aplikasi Django di cPanel

Script ini akan otomatis menjalankan semua pemeriksaan dan setup dalam satu kali eksekusi.

Usage:
    python run.py
"""

import os
import sys
import subprocess
import django
from pathlib import Path

# Setup Django environment - Gunakan settings.py untuk development
BASE_DIR = Path(__file__).resolve().parent
sys.path.insert(0, str(BASE_DIR))
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'psb_pondok.settings')
django.setup()

from django.conf import settings
from django.core.management import execute_from_command_line
from django.db import connection


def print_header(title):
    """Print header dengan format yang rapi"""
    print("\n" + "=" * 60)
    print(f"  {title}")
    print("=" * 60 + "\n")


def print_success(message):
    """Print success message"""
    print(f"✓ {message}")


def print_error(message):
    """Print error message"""
    print(f"✗ {message}")


def print_info(message):
    """Print info message"""
    print(f"ℹ {message}")


def check_dependencies():
    """Cek apakah semua dependencies terinstall"""
    print_header("Checking Dependencies")
    
    required_packages = [
        'Django',
        'django_htmx',
        'widget_tweaks',
        'django_filters',
        'django_extensions',
        'django_summernote',
        'PIL',  # Pillow
        'openpyxl',
        'pandas',
        'reportlab',
    ]
    
    missing_packages = []
    installed_packages = []
    
    for package in required_packages:
        try:
            if package == 'PIL':
                __import__('PIL')
                installed_packages.append('Pillow')
            elif package == 'django_htmx':
                __import__('django_htmx')
                installed_packages.append(package)
            elif package == 'widget_tweaks':
                __import__('widget_tweaks')
                installed_packages.append(package)
            elif package == 'django_filters':
                __import__('django_filters')
                installed_packages.append(package)
            elif package == 'django_extensions':
                __import__('django_extensions')
                installed_packages.append(package)
            elif package == 'django_summernote':
                __import__('django_summernote')
                installed_packages.append(package)
            else:
                __import__(package.lower().replace('-', '_'))
                installed_packages.append(package)
            print_success(f"{package} - Installed")
        except ImportError:
            missing_packages.append(package)
            print_error(f"{package} - Missing")
    
    print(f"\nTotal: {len(installed_packages)} installed, {len(missing_packages)} missing")
    
    if missing_packages:
        print_info(f"\nMissing packages: {', '.join(missing_packages)}")
        return False
    
    return True


def check_database():
    """Cek koneksi database"""
    print_header("Checking Database")
    
    try:
        with connection.cursor() as cursor:
            cursor.execute("SELECT 1")
            print_success("Database connection: OK")
            
            # Cek apakah ada tables (MySQL/MariaDB)
            db_engine = settings.DATABASES['default']['ENGINE']
            if 'mysql' in db_engine.lower():
                cursor.execute("SHOW TABLES")
                tables = cursor.fetchall()
                print_success(f"Database tables: {len(tables)} tables found")
            else:
                # SQLite fallback
                cursor.execute("SELECT name FROM sqlite_master WHERE type='table'")
                tables = cursor.fetchall()
                print_success(f"Database tables: {len(tables)} tables found")
            
            return True
    except Exception as e:
        print_error(f"Database connection: FAILED - {str(e)}")
        return False


def check_settings():
    """Cek konfigurasi settings"""
    print_header("Checking Settings")
    
    checks = {
        'DEBUG': settings.DEBUG,
        'ALLOWED_HOSTS': settings.ALLOWED_HOSTS,
        'SECRET_KEY': 'Set' if settings.SECRET_KEY else 'Not Set',
        'STATIC_ROOT': str(settings.STATIC_ROOT),
        'MEDIA_ROOT': str(settings.MEDIA_ROOT),
        'DATABASE': settings.DATABASES['default']['ENGINE'],
    }
    
    for key, value in checks.items():
        if key == 'DEBUG':
            status = "✓" if not value else "✗"
            print(f"{status} {key}: {value} {'(Production Mode)' if not value else '(Development Mode - WARNING!)'}")
        elif key == 'ALLOWED_HOSTS':
            print(f"✓ {key}: {', '.join(value) if value else 'Empty (WARNING!)'}")
        else:
            print(f"✓ {key}: {value}")
    
    # Security checks
    print("\nSecurity Settings:")
    security_settings = {
        'SECURE_BROWSER_XSS_FILTER': getattr(settings, 'SECURE_BROWSER_XSS_FILTER', False),
        'SECURE_CONTENT_TYPE_NOSNIFF': getattr(settings, 'SECURE_CONTENT_TYPE_NOSNIFF', False),
        'X_FRAME_OPTIONS': getattr(settings, 'X_FRAME_OPTIONS', ''),
        'SESSION_COOKIE_SECURE': getattr(settings, 'SESSION_COOKIE_SECURE', False),
        'CSRF_COOKIE_SECURE': getattr(settings, 'CSRF_COOKIE_SECURE', False),
    }
    
    for key, value in security_settings.items():
        status = "✓" if value else "✗"
        print(f"{status} {key}: {value}")
    
    return True


def check_files():
    """Cek file dan direktori penting"""
    print_header("Checking Files & Directories")
    
    required_paths = {
        'requirements.txt': BASE_DIR / 'requirements.txt',
        'manage.py': BASE_DIR / 'manage.py',
        'passenger_wsgi.py': BASE_DIR / 'passenger_wsgi.py',
        '.htaccess': BASE_DIR / '.htaccess',
        'staticfiles': BASE_DIR / 'staticfiles',
        'media': BASE_DIR / 'media',
        'logs': BASE_DIR / 'logs',
        'db.sqlite3': BASE_DIR / 'db.sqlite3',
    }
    
    for name, path in required_paths.items():
        if path.exists():
            if path.is_dir():
                file_count = len(list(path.rglob('*'))) if path.is_dir() else 0
                print_success(f"{name}: Exists ({file_count} items)")
            else:
                size = path.stat().st_size
                print_success(f"{name}: Exists ({size:,} bytes)")
        else:
            print_error(f"{name}: Missing")
            if name == 'logs':
                print_info("Creating logs directory...")
                path.mkdir(exist_ok=True)
                print_success("Logs directory created")
    
    return True


def install_dependencies():
    """Install semua dependencies dari requirements.txt (safe mode untuk shared hosting)"""
    print_header("Installing Dependencies")
    
    requirements_file = BASE_DIR / 'requirements.txt'
    safe_install_script = BASE_DIR / 'install_requirements_safe.py'
    
    if not requirements_file.exists():
        print_error("requirements.txt not found!")
        return False
    
    # Coba gunakan safe install script jika ada
    if safe_install_script.exists():
        print_info("Using safe installation script (avoids build tools)...")
        try:
            result = subprocess.run(
                [sys.executable, str(safe_install_script)],
                check=True
            )
            print_success("All dependencies installed successfully!")
            return True
        except subprocess.CalledProcessError as e:
            print_error(f"Safe installation failed, trying standard method...")
            # Fallback ke metode standar
    
    # Metode standar dengan flag untuk menghindari build tools
    try:
        print_info("Installing packages from requirements.txt...")
        print_info("Note: Using --only-binary to avoid build tools...")
        
        # Install dengan --only-binary untuk menghindari build dari source
        # dan --prefer-binary untuk prefer wheels
        result = subprocess.run(
            [sys.executable, '-m', 'pip', 'install', 
             '--upgrade', 'pip', 'setuptools', 'wheel'],
            check=True,
            capture_output=True,
            text=True
        )
        
        # Install packages dari requirements.txt
        print_info("Installing from requirements.txt...")
        subprocess.run(
            [sys.executable, '-m', 'pip', 'install', '--prefer-binary', '-r', str(requirements_file)],
            check=True,
            capture_output=True,
            text=True
        )
        
        print_success("All dependencies installed successfully!")
        return True
    except subprocess.CalledProcessError as e:
        print_error(f"Failed to install dependencies: {e}")
        if e.stderr:
            print_error(f"Error output: {e.stderr}")
        print_info("\nTip: Try running: python install_requirements_safe.py")
        return False




def run_migrations():
    """Jalankan database migrations"""
    print_header("Running Migrations")
    
    try:
        print_info("Running migrations...")
        execute_from_command_line(['manage.py', 'migrate', '--noinput'])
        print_success("Migrations completed successfully!")
        return True
    except Exception as e:
        print_error(f"Migration failed: {e}")
        return False


def collect_static():
    """Collect static files untuk production"""
    print_header("Collecting Static Files")
    
    try:
        print_info("Collecting static files...")
        execute_from_command_line(['manage.py', 'collectstatic', '--noinput', '--clear'])
        print_success("Static files collected successfully!")
        return True
    except Exception as e:
        print_error(f"Collect static failed: {e}")
        return False




def main():
    """Main function - Jalankan semua checks dan setup otomatis"""
    print_header("Production Setup & Check - rdsmahato.ponpes.id")
    print_info("Menjalankan semua pemeriksaan dan setup...")
    print()
    
    results = {
        'dependencies': False,
        'database': False,
        'settings': False,
        'files': False,
    }
    
    try:
        # 1. Check Dependencies
        results['dependencies'] = check_dependencies()
        if not results['dependencies']:
            print_info("\nMencoba install dependencies yang missing...")
            install_dependencies()
            # Re-check setelah install
            results['dependencies'] = check_dependencies()
        
        print()
        
        # 2. Check Database
        results['database'] = check_database()
        
        print()
        
        # 3. Check Settings
        results['settings'] = check_settings()
        
        print()
        
        # 4. Check Files
        results['files'] = check_files()
        
        print()
        
        # 5. Run Migrations (jika database OK)
        if results['database']:
            print_info("Menjalankan migrations...")
            run_migrations()
        
        print()
        
        # 6. Collect Static Files
        print_info("Collecting static files...")
        collect_static()
        
        print()
        
        # Summary
        print_header("Summary")
        print(f"✓ Dependencies: {'OK' if results['dependencies'] else 'FAILED'}")
        print(f"✓ Database: {'OK' if results['database'] else 'FAILED'}")
        print(f"✓ Settings: {'OK' if results['settings'] else 'FAILED'}")
        print(f"✓ Files: {'OK' if results['files'] else 'FAILED'}")
        print()
        
        if all(results.values()):
            print_success("Semua pemeriksaan berhasil! Aplikasi siap untuk production.")
            print_info("\nNext steps:")
            print_info("1. Buat superuser jika belum ada: python manage.py createsuperuser")
            print_info("2. Test aplikasi di browser")
            sys.exit(0)
        else:
            print_error("Beberapa pemeriksaan gagal. Silakan perbaiki masalah di atas.")
            sys.exit(1)
            
    except KeyboardInterrupt:
        print("\n\nOperation cancelled by user.")
        sys.exit(1)
    except Exception as e:
        print_error(f"Error: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)


if __name__ == '__main__':
    main()


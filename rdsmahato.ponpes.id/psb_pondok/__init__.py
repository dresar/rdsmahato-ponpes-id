# Konfigurasi PyMySQL untuk Django
import pymysql

# PyMySQL sebagai MySQLdb
pymysql.install_as_MySQLdb()

# Patch Django untuk bypass MariaDB version check
# Django 5.2+ memerlukan MariaDB 10.5+, tapi kita bisa bypass untuk 10.4
import django.db.backends.base.base

# Simpan original method
_original_check_version = django.db.backends.base.base.BaseDatabaseWrapper.check_database_version_supported

def patched_check_version(self):
    """Patch untuk bypass MariaDB 10.5 requirement"""
    try:
        # Coba original check dulu
        return _original_check_version(self)
    except django.db.utils.NotSupportedError as e:
        # Jika error tentang MariaDB 10.5, bypass
        if "10.5" in str(e) or "MariaDB" in str(e):
            # Skip version check untuk MariaDB 10.4
            return
        # Jika error lain, raise
        raise

# Apply patch
django.db.backends.base.base.BaseDatabaseWrapper.check_database_version_supported = patched_check_version

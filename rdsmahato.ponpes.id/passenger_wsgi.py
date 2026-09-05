"""
Passenger WSGI entry point untuk aplikasi Django psb_pondok.

File ini digunakan oleh Passenger (modul Apache/Nginx) untuk menjalankan aplikasi Django.
Pastikan path ke direktori proyek sudah benar.
"""

import sys
import os

# Fix untuk error numpy: Set environment variable SEBELUM import apapun
# Ini harus dilakukan paling awal untuk menghindari konflik numpy
os.environ.setdefault('OPENBLAS_NUM_THREADS', '1')
os.environ.setdefault('MKL_NUM_THREADS', '1')
os.environ.setdefault('NUMEXPR_NUM_THREADS', '1')
os.environ.setdefault('OMP_NUM_THREADS', '1')

# Tambahkan path ke direktori proyek ke sys.path
# Sesuaikan path ini dengan lokasi sebenarnya dari aplikasi Anda
# Jika file ini berada di root direktori proyek, gunakan:
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, BASE_DIR)

# Atur environment variable untuk Django settings
# Gunakan settings_production.py untuk production
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'psb_pondok.settings')

# Import dan inisialisasi aplikasi WSGI Django
# Pattern sederhana dan aman untuk Passenger
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()


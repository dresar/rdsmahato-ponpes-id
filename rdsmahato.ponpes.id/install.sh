#!/bin/bash
# Install requirements untuk cPanel - Skip pycairo
echo "Installing packages..."
pip install --no-build-isolation Django>=5.2.8 django-extensions>=3.2.0 django-htmx>=1.19.0 django-widget-tweaks>=1.5.0 django-filter>=24.2 Pillow>=10.0.0 ipython>=8.0.0 python-decouple>=3.8 django-summernote>=0.8.20 openpyxl>=3.1.0 pandas>=2.0.0 reportlab>=4.0.0 whitenoise>=6.6.0 django-htmlmin>=0.11.0
echo "Installing xhtml2pdf (without pycairo)..."
pip install --no-deps xhtml2pdf>=0.2.11
echo "Done!"


# Python Development Environment

Category: Python
Last edited time: February 6, 2021 5:14 AM

# Python (Default)

```bash
# Update Ubuntu
	sudo apt update
	sudo apt -y upgrade

python3 -V

# Install Python Package Manager (pip)
	sudo apt install -y python3-pip

	pip3 --version

# Setting Up Virtual Environment
	sudo apt install -y python3-venv
	
	mkdir environments
	cd environments
	
	python3 -m venv my_env
	
	source my_env/bin/activate # Active Environment
	
	deactivate # Deactive Environment

```

# PyEnv

```bash
# https://realpython.com/intro-to-pyenv/#why-use-pyenv

# Install Build Dependencies
	sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev \
libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl

# Using the pyenv-installer
	curl https://pyenv.run | bash

# Add PATH to SHELL (Bash, ZSH)
	# Load pyenv automatically by adding
	# the following to ~/.zshrc:

	export PATH="$HOME/.pyenv/bin:$PATH"
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"

# Available Python Versions to Install
	pyenv install --list | grep " 3\.[678]"

# Install Python
	pyenv install -v 3.7.6

# List installed python version
	ls ~/.pyenv/versions/

# Unistall 
	pyenv uninstall 3.7.6

# Set Version and Check Version
	pyenv global 3.7.6
	python -V

# Check if Installed version is working 
	python -m test

# Set Python System version
	pyenv global system

# Create virtual environments
	pyenv virtualenv <python_version> <environment_name>

# Activate virtual env
	pyenv local myproject

```

# Python API Environment

```bash
# Collection of tools for internationalizing Python applications
	# py37-Babel-2.8.0 
	sudo pip install Babel==2.8.0	

# Micro web framework
	# py37-Flask-1.1.1
	sudo pip install Flask==1.1.1 

# Flask extension adding a decorator for CORS support
	# py37-Flask-Cors-3.0.8 
	sudo pip install Flask-Cors==3.0.8

# Simple framework for creating REST APIs with Flask
	# py37-Flask-RESTful-0.3.7 
	sudo pip install Flask-RESTful==0.3.7

# Fast and easy to use stand-alone template engine
	# py37-Jinja2-2.10.1 
  sudo pip install Jinja2==2.10.1

# Implements XML/HTML/XHTML Markup safe string for Python
	# py37-MarkupSafe-1.1.1 
  sudo pip install MarkupSafe==1.1.1

# Library for parsing ISO 8601 strings
	# py37-aniso8601-4.1.0 
  sudo pip install aniso8601==4.1.0

# ASN.1 library with a focus on performance and a pythonic API
	# py37-asn1crypto-0.24.0 
  sudo pip install asn1crypto==0.24.0

# Mozilla SSL certificates
	# py37-certifi-2019.11.28 
  sudo pip install certifi==2019.11.28

# Foreign Function Interface for Python calling C code
	# py37-cffi-1.14.0 
  sudo pip install cffi==1.14.0

# Universal encoding detector for Python 2 and 3
	# py37-chardet-3.0.4_3 
  sudo pip install chardet==3.0.4

# Python package for creating command line interfaces
	# py37-click-7.0 
  sudo pip install click==7.0

# Cryptographic recipes and primitives for Python developers
	# py37-cryptography-2.6.1 
  sudo pip install cryptography==2.6.1

# Extensions to the standard Python datetime module
	# py37-dateutil-2.8.0 
  sudo pip install python-dateutil==2.8.0

# Read DBF files, returning data as native Python objects
	# py37-dbfread-2.0.7 
  sudo pip install dbfread==2.0.7

# Internationalized Domain Names in Applications (IDNA)
	# py37-idna-2.8 
  sudo pip install idna==2.8

# Various helpers to pass data in untrusted environments
	# py37-itsdangerous-0.24
  sudo pip install itsdangerous==0.24 

# Strictly RFC 4511 conforming LDAP V3 pure Python client
	# py37-ldap3-2.6_1 
  sudo pip install ldap3==2.6.1

# Python interface to the OpenSSL library
	# py37-openssl-19.0.0 
  sudo pip install pyOpenSSL==19.0.0
		
# High performance Python adapter for PostgreSQL
	# py37-psycopg2-2.8.4 
  sudo pip install psycopg2==2.8.4

# ASN.1 toolkit for Python
	# py37-pyasn1-0.4.7 
  sudo pip install pyasn1==0.4.7

# C parser in Python
	# py37-pycparser-2.19 
  sudo pip install pycparser==2.19

# Pure Python MySQL Driver
	# py37-pymysql-0.9.3 
  sudo pip install PyMySQL==0.9.3
	
# Python SOCKS module
	# py37-pysocks-1.7.1 
  sudo pip install PySocks==1.7.1

# World Timezone Definitions for Python
	# py37-pytz-2019.3,1 
  sudo pip install pytz==2019.3
		
# HTTP library written in Python for human beings
	# py37-requests-2.22.0 
  sudo pip install requests==2.22.0
	
# Python packages installer
	# py37-setuptools-44.0.0 
  sudo pip install setuptools==44.0.0
	
# Simple, fast, extensible JSON encoder/decoder
	# py37-simplejson-3.17.0 
  sudo pip install simplejson==3.17.0

# Python 2 and 3 compatibility utilities
	# py37-six-1.14.0 	
  sudo pip install six==1.14.0

# ASCII transliterations of Unicode text
	# py37-unidecode-1.0.23_1 
	sudo pip install Unidecode==1.0.23

# HTTP library with thread-safe connection pooling, file post, and more
	# py37-urllib3-1.25.7,1 
  sudo pip install urllib3==1.25.7
	
# Python WSGI server
	# py37-waitress-1.4.3 
  sudo pip install waitress==1.4.3

# Python utilities collection for building WSGI applications
	# py37-werkzeug-1.0.0 
  sudo pip install Werkzeug==1.0.0

# py37-python-dotenv-0.14.0
	pip install python-dotenv==0.14.0

```
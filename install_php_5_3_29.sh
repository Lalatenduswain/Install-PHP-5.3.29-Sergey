#!/bin/bash

# Exit on any error
set -e

# Install necessary dependencies
echo "Installing necessary build dependencies..."
sudo apt-get update
sudo apt-get install -y build-essential libxml2-dev

# Download PHP 5.3.29
echo "Downloading PHP 5.3.29..."
wget http://in1.php.net/distributions/php-5.3.29.tar.bz2

# Extract the downloaded file
echo "Extracting PHP 5.3.29..."
tar -xvf php-5.3.29.tar.bz2
cd php-5.3.29

# Configure PHP
echo "Configuring PHP..."
./configure

# Compile PHP
echo "Compiling PHP..."
make

# Install PHP
echo "Installing PHP..."
sudo make install

# Verify installation
echo "PHP version installed:"
php -v

echo "PHP 5.3.29 installation complete."

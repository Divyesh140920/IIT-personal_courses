#!/bin/bash

# Update and upgrade Ubuntu 22.04 LTS
sudo apt update && sudo apt upgrade -y

# Install necessary Wordpress pre-requisites
sudo apt install vim unzip -y
sudo apt-get install mysql-server
sudo systemctl enable mysql && sudo systemctl start mysql
sudo apt-get install apache2
sudo systemctl enable apache2 && sudo systemctl start apache2
sudo apt install php libapache2-mod-php php-mysql

# Enable Apache Modules
sudo a2enmod rewrite
sudo a2enmod headers
sudo systemctl restart apache2
sudo ufw allow 3306


# Create a database named 'wp' using MySQL
sudo mysql -e "CREATE DATABASE wp"

# Create a non-root user named 'wp-user' and grant all privileges on 'wp' database
sudo mysql -e "CREATE USER 'wp-user'@'localhost' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON wp.* TO 'wp-user@'localhost'; FLUSH PRIVILEGES;"

# Download the WordPress Installer Zip file
ZIP_FILE="latest.zip"
URL="https://wordpress.org/$ZIP_FILE"
EXTRACTION_DIR="wordpress"

# Check if the file already exists
if [ -e "$ZIP_FILE" ]; then
    echo "$ZIP_FILE already exists."
else
    # If not, download it
    wget "$URL"
fi

# Extract the WordPress code

# Check if the directory exists (indicating previous extraction)
if [ -d "$EXTRACTION_DIR" ]; then
    echo "The WordPress code is already extracted in '$EXTRACTION_DIR'."
else
    # If not, unzip the file
    unzip "$ZIP_FILE"
    echo "WordPress code extracted to '$EXTRACTION_DIR'."
fi

# Move the extracted WordPress directory to /var/www/html/
sudo mv wordpress /var/www/html/

# Rename the file wp-config-sample.php to wp-config.php
# Check if wp-config.php already exists
if [ -e "/var/www/html/wordpress/wp-config.php" ]; then
    echo "wp-config.php already renamed."
else
    # If not, rename the file
    sudo mv -f /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
    echo "wp-config.php renamed successfully."
fi

# Update wp-config.php with database credentials
sudo sed -i 's/database_name_here/wp/g' /var/www/html/wordpress/wp-config.php
sudo sed -i 's/username_here/wp-user/g' /var/www/html/wordpress/wp-config.php
sudo sed -i 's/password_here/password/g' /var/www/html/wordpress/wp-config.php
echo "wp-config.php updated successfully."

# Check File and Directory Permissions
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 755 /var/www/html/wordpress

# Install firewalld and enable and start the service
sudo apt-get install firewalld -y
sudo systemctl enable firewalld
sudo systemctl start firewalld

# Permanently open port 80/tcp for HTTP traffic on the Public Zone
sudo firewall-cmd --zone=public --permanent --add-port=80/tcp
sudo  systemctl restart firewalld

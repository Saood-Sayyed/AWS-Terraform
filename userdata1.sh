#!/bin/bash

# Update package repositories
sudo apt update && sudo apt upgrade -y

# Install Apache web server
sudo apt install apache2 -y

# Start Apache service
sudo systemctl start apache2

# Enable Apache service to start on boot
sudo systemctl enable apache2

# Create a basic HTML page
echo "<!DOCTYPE html>
<html>
<head>
  <title>Welcome to My Website</title>
</head>
<body>
  <h1>Welcome to My Website</h1>
  <p>This is a basic HTML page hosted on an EC2 instance2.</p>
</body>
</html>" | sudo tee /var/www/html/index.html

# Additional commands if needed
# <your-commands-here>

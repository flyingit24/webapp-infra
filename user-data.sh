#!/bin/bash
# Install web server and PHP
yum update -y
amazon-linux-extras install -y php7.4
yum install -y httpd php-mysqlnd

# Start and enable web server
systemctl start httpd
systemctl enable httpd

# Create a simple PHP page to test DB connection
cat << 'EOF' > /var/www/html/index.php
<?php
$servername = "${db_endpoint}";
$username = "${db_username}";
$password = "${db_password}";
$dbname = "${db_name}";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully to the database!";
?>
EOF

# Set appropriate permissions
chown -R apache:apache /var/www/html
#!/bin/bash

apt-get update -y
apt-get install apache2 -y

systemctl enable apache2
systemctl start apache2

HOSTNAME=$(hostname)

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Azure Terraform HA Project</title>
</head>

<body>

<h1>Azure Terraform HA Web Application</h1>

<h2>Server: $HOSTNAME</h2>

<p>This website was deployed using Terraform.</p>

</body>
</html>
EOF
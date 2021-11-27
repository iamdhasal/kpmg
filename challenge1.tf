
# Presentation Tier (Web Serser with apache installed) | Application Tier (a stattic http page)
Providers Block
terraform {
  ******
}

resource "aws_instance" "apache_server" {
  ami           = 123554
  instance_type = "t2.micro"
  region = "us-east-1"

user_data = 
  #!/bin/bash
yum update -y
yum -y install httpd
systemctl start httpd
systemctl enable httpd
echo "<html> <h1> Hello from Vivek from $HOSTNAME </h1> </html>">>/var/www/html/index.html

# Data Tier
resource "aws_db_instance" "mysql" {
**********************  

}
yum install -y httpd
systemctl enable httpd
systemctl start httpd
systemctl status httpd
firewall-cmd --permanent --ad-port=80/tcp
firewall-cmd --reload
firewall-cmd --query-port=80/tcp

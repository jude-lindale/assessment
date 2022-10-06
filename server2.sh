cd /tmp
cp websrv.crt /etc/pki/tls/certs
cd /root/assessment
cp websrv.csr /etc/pki/tls/certs
cp websrv.key /etc/pki/tls/private
yum -y install mod_ssl
sed -i 's/SSLCertificateFile /etc/pki/tls/certs/localhost.crt /etc/pki/tls/certs/websrv.crt/g' /etc/httpd/conf.d/ssl.conf
sed -i 's/SSLCertificateKeyFile /etc/pki/tls/private/localhost.key /etc/pki/tls/private/websrv.key/g' /etc/httpd/conf.d/ssl.conf
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --reload
systemctl restart httpd

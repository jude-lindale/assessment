useradd jude
passwd jude
firewall-cmd --permanent --add-port=22/tcp
firewall-cmd --permanent --add-port=22/scdp
firewall-cmd --reload
cd /etc/pki/CA
touch index.txt
echo 1000 > serial
openssl genrsa -des3 -out private/cakey.pem 2048
openssl req -new -x509 -days 365 -key private/cakey.pem -out cacert.pem
openssl ca -out websrv.crt -infiles websrv.csr

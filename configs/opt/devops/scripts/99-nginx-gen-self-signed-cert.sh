#!/bin/bash
#--------------------------------------------------------,
#  ____              ___                  _ _      _     |
# |  _ \  _____   __/ _ \ _ __  ___   ___| (_) ___| | __ |
# | | | |/ _ \ \ / / | | | '_ \/ __| / __| | |/ __| |/ / |
# | |_| |  __/\ V /| |_| | |_) \__ \| (__| | | (__|   <  |
# |____/ \___| \_/  \___/| .__/|___(_)___|_|_|\___|_|\_\ |
#                        |_|                             |
#--------------------------------------------------------|
#     Author: Anderson Ayres (anderson@devops.click)     |
#  https://devops.click | https://anderson.devops.click  |
#--------------------------------------------------------|
#         GENERATE GENERIC NGINX SELF-SIGNED CERT        |
#                         v1.00                          |
#--------------------------------------------------------'
tmpssldir=/tmp-ss-ssl

[[ -d $tmpssldir ]] && rm -rf $tmpssldir/* || mkdir $tmpssldir
[[ -d /etc/nginx/ssl/ ]] && rm -rf /etc/nginx/ssl/* || mkdir -p /etc/nginx/ssl/

echo "** Creating SSL request config file..."
cat >$tmpssldir/doclick-openssl.conf <<'EOF'
[ req ]
default_bits       = 4096
default_md         = sha512
default_keyfile    = ssl.key
prompt             = no
encrypt_key        = no
distinguished_name = req_distinguished_name
req_extensions     = req_ext

# distinguished_name
[ req_distinguished_name ]
countryName            = "US"
localityName           = "Miami"
stateOrProvinceName    = "FL"
organizationName       = "https://DevOps.click"
commonName             = "localhost"
emailAddress           = "visit@devops.click"

[ req_ext ]
subjectAltName = @alt_names

# use here if you need multiple domains
[ alt_names ]
DNS.1 = localhost
DNS.2 = yourdns2
EOF

echo "** Generate key and CSR from..."
openssl req -newkey rsa:4096 -nodes -keyout /etc/nginx/ssl/ssl.key -out $tmpssldir/ssl.csr -config $tmpssldir/doclick-openssl.conf
# openssl req -newkey rsa:4096 --sha512 -nodes -keyout /etc/nginx/ssl/ssl.key -out $tmpssldir/ssl.csr -config $tmpssldir/doclick-openssl.conf # not compatible with amzn2

# To check request if needed
#openssl req -text -noout -in ssl.csr

echo "** requesting a 10 year certificate and signing it with private key..."
openssl x509 -req -days 3650 -in $tmpssldir/ssl.csr -signkey /etc/nginx/ssl/ssl.key -out /etc/nginx/ssl/ssl.crt

# echo "** creating tls secret on Kubernetes cluster..."
#kubectl -n <yournamespace> create secret tls ssl-cert --key ./ssl.key --cert ./ssl.crt

# if needed, check on k8s:
#kubectl get secrets -n <yournamespace>
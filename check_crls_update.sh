#!/bin/bash 

#set -x

url_crl_cryptopro='https://ruc.samregion.ru/rucso_cryptopro_2020.crl'
url_crl_vipnet='https://ruc.samregion.ru/rucso_vipnet_2020.crl'

last_crl_cryptopro='/tmp/ctyptopro_crl/CRYPTOPRO_CRL.crl'
last_crl_vipnet='/tmp/vipnet_crl/VIPNET_CRL.crl'

crypto_pro_last_update(){

wget -P /tmp/cryptopro_crl/ -O CRYPTOPRO_CRL.crl $url_crl_cryptopro --no-check-certificate 2&>1
openssl crl -inform DER -text -noout -in $last_crl_cryptopro | grep 'Last Update' 

}

crypto_pro_last_update

crypto_pro_next_update(){
wget -P /tmp/cryptopro_crl/ -O CRYPTOPRO_CRL.crl $url_crl_cryptopro --no-check-certificate 2&>1
openssl crl -inform DER -text -noout -in $last_crl_cryptopro | grep 'Next Update'
}


vipnet_last_update(){
wget -P /tmp/vipnet_crl/ -O VIPNET_CRL.crl $url_crl_vipnet --no-check-certificate
openssl crl -inform DER -text -noout -in $last_crl_vipnet | grep 'Last Update'

}

vipnet_next_update(){
wget -P /tmp/vipnet_crl/ -O VIPNET_CRL.crl $url_crl_vipnet --no-check-certificate
openssl crl -inform DER -text -noout -in $last_crl_vipnet | grep 'Next Update'

}


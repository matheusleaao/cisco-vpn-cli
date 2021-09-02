#!/bin/bash
echo "Bem-vindo ao Cisco CLI"
VPN_SERVER=""

echo "Usuário: "
read user
echo "Senha: "
read -ers senha
echo "MobilePASS: "
read mbp

echo "$user
$senha$mbp
y
" > .vpn_creds

echo "Connecting to VPN..."
/opt/cisco/anyconnect/bin/vpn -s < .vpn_creds connect ${VPN_SERVER}

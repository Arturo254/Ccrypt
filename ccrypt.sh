#!/bin/bash
clear 

echo -e "\e[34m



 ▄████▄   ▄████▄   ██▀███ ▓██   ██▓ ██▓███  ▄▄▄█████▓
▒██▀ ▀█  ▒██▀ ▀█  ▓██ ▒ ██▒▒██  ██▒▓██░  ██▒▓  ██▒ ▓▒
▒▓█    ▄ ▒▓█    ▄ ▓██ ░▄█ ▒ ▒██ ██░▓██░ ██▓▒▒ ▓██░ ▒░
▒▓▓▄ ▄██▒▒▓▓▄ ▄██▒▒██▀▀█▄   ░ ▐██▓░▒██▄█▓▒ ▒░ ▓██▓ ░ 
▒ ▓███▀ ░▒ ▓███▀ ░░██▓ ▒██▒ ░ ██▒▓░▒██▒ ░  ░  ▒██▒ ░ 
░ ░▒ ▒  ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░  ██▒▒▒ ▒▓▒░ ░  ░  ▒ ░░   
  ░  ▒     ░  ▒     ░▒ ░ ▒░▓██ ░▒░ ░▒ ░         ░    
░        ░          ░░   ░ ▒ ▒ ░░  ░░         ░      
░ ░      ░ ░         ░     ░ ░                       
░        ░                 ░ ░                       

|----------> BY ARTURO AND XIMENA <----------|
PARA DESENCRIPTAR LOS ARCHIVOS O CARPETAS UTILZA :

ccrypt -d



" | lolcat -a 
echo -e "\e[1;37m     "



# Verificar si se proporciona una ruta de archivo o carpeta
if [ $# -eq 0 ]; then
    echo "Debe proporcionar una ruta de archivo o carpeta a encriptar."
    exit 1
fi

# Verificar si ccrypt está instalado en el sistema
if ! command -v ccrypt &> /dev/null; then
    echo "ccrypt no está instalado en el sistema."
    exit 1
fi

# Solicitar la contraseña para el cifrado
read -sp "Introduzca la contraseña para el cifrado: " password
echo ""

# Encriptar el archivo o carpeta utilizando ccrypt
ccrypt -f -k <(echo "$password") $1

echo "Archivo o carpeta encriptado correctamente."


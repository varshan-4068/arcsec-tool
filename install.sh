#!/usr/bin/env bash

INSTALL_DIR="/usr/local/bin"
COLOR1=$(tput setaf 2)
COLOR2=$(tput setaf 7)

if [[ $EUID -ne 0 ]]; then
	exec sudo "$0"
fi

cp security_check.sh "$INSTALL_DIR/arcsec-tool"
chmod +x "$INSTALL_DIR/arcsec-tool"

echo -e "\n==========================================="
echo "arcsec-tool installed successfully!"
echo "To uninstall, run: ${COLOR1}sudo rm $INSTALL_DIR/arcsec-tool${COLOR2}"
echo -e "==========================================="

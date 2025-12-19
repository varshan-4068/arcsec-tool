#!/usr/bin/env bash

COLOR1=$(tput setaf 2)
COLOR2=$(tput setaf 7)
RESET=$(tput sgr0)

CRITICAL=0
WARN=0

if [ ! -f /usr/bin/figlet ];then
	echo -e "Figlet Not Found!\n"
	sudo pacman -S figlet
fi

print_logo(){

cat << EOF

$(figlet "SECURITY CHECK")

EOF

}

clear
print_logo

echo -e "${COLOR1}══ Arch Security Quick Check ══${COLOR2}\n"

if grep -q "^PermitRootLogin yes" /etc/ssh/sshd_config 2>/dev/null; then
  echo -e "${COLOR1}[CRITICAL] SSH root login enabled${COLOR2}"
  echo "[FIX]: Set PermitRootLogin no in /etc/ssh/sshd_config"
  ((CRITICAL++))
else
  echo -e "${COLOR1}[OK] SSH root login disabled${COLOR2}"
fi

if grep -q "^PasswordAuthentication yes" /etc/ssh/sshd_config 2>/dev/null; then
  echo -e "${COLOR1}[WARN] SSH password authentication enabled${COLOR2}"
  echo "[RECOMMENDATION]: Use SSH keys only"
  ((WARN++))
else
  echo -e "${COLOR1}[OK] SSH password authentication disabled${COLOR2}"
fi

if gum spin --spinner points --title "Updating System Packages…" -- sudo pacman -Sy --quiet; then
  gum style --foreground 2 "[+] Package database updated"
else
  gum style --foreground 1 "[-] Failed to update package database"
fi

UPDATES=$(pacman -Qu 2>/dev/null | wc -l)
if [[ "$UPDATES" -gt 0 ]]; then
  echo -e "${COLOR1}[WARN] $UPDATES pending updates${COLOR2}"
  ((WARN++))
else
  echo -e "${COLOR1}[OK] System up to date${COLOR2}"
fi

FIREWALL=$(sudo ufw status | grep -q "^Status: active " 2>/dev/null || systemctl is-active --quiet ufw || systemctl is-active --quiet firewalld || systemctl is-active --quiet nftables)

if $FIREWALL; then
	echo -e "${COLOR1}[OK] Firewall Enabled..."
else
	echo -e "${COLOR1}[WARN] Firewall Not Enabled...${COLOR2}"
	((WARN++))
fi

echo -e "\n${COLOR1}══ Summary ══${COLOR2}"
echo -e "Critical issues: ${COLOR2}$CRITICAL${COLOR2}"
echo -e "Warnings: ${COLOR2}$WARN${COLOR1}"

if [[ "$CRITICAL" -gt 0 ]]; then
  echo -e "\n${COLOR1}System is NOT secure.${COLOR2}"
else
  echo -e "\n${COLOR1}No critical security issues found.${RESET}"
fi

echo -e "\nPress Enter to Close"

read -r

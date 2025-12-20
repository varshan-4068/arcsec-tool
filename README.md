## Security Check

To Install the Tool Run the commands below...

    git clone https://github.com/varshan-4068/arcsec-tool.git
    sudo pacman -S gum figlet
    cd arcsec-tool/
    chmod +x security_check.sh
    sudo ./security_check.sh

## Usecase

1. Checks for ssh root login disabled
2. Checks for ssh password autentication enabled
3. Checks if the system is up-to-date
4. Checks for any orphaned packages
5. Checks for any systemd failed services found
6. Checks if any one of the 3 firewalls ufw, nftables, firewalld is enabled
7. Display Summary, Errors and Recommendation based on the above checks
8. Designed with Clean UI 
10. Only Runs on arch and it's based distros

<br />

<img width="1920" height="1080" alt="screenshot-2025-12-20_18-41-58" src="https://github.com/user-attachments/assets/afcdcb25-054c-4afe-8d14-c9b730711292" />

---

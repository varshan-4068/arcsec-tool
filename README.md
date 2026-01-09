## Security Check

To Install the Tool run the commands below...

    git clone https://github.com/varshan-4068/arcsec-tool.git
    sudo pacman -S gum figlet
    cd arcsec-tool/
    chmod +x install.sh
    ./install.sh    

For help Use...

    arcsec-tool [OPTIONS] 
    
    OPTIONS: 
        -h | --help
        -l | --log
        -c | --clear
        -n | --non-interactive

## Screenshot

<img width="1920" height="1080" alt="screenshot-2026-01-09_19-37-54" src="https://github.com/user-attachments/assets/38b09913-3fe1-4258-9a40-d22b2b2a3391" />

## Usecase

1. Checks for ssh root login disabled
2. Checks for ssh password autentication enabled
3. Checks if the system is up-to-date
4. Checks for any orphaned packages
5. Checks for any systemd failed services found
6. Check for Users with UID 0 (Root Privileges)
7. Checks if system clock is synchronized
8. Checks disk usage ( Above 80% of Disk Usage may break updates and logging )
9. Checks if any one of the 3 firewalls ufw, nftables, firewalld is enabled
10. Display Summary, Errors and Recommendation based on the above checks
11. Designed with Clean UI 
12. Only Runs on arch and it's based distros

<br />

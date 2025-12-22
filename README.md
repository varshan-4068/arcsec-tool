## Security Check

To Install the Tool as a script run the commands below...

    git clone https://github.com/varshan-4068/arcsec-tool.git
    sudo pacman -S gum figlet
    cd arcsec-tool/
    chmod +x security_check.sh
    ./security_check.sh

For help Use...

    ./security_check.sh [OPTIONS]

    OPTIONS:
        -h | --help
        -l | --log
        -c | --clear

To Use it as a command run the commands below...

    git clone https://github.com/varshan-4068/arcsec-tool.git
    sudo pacman -S gum figlet
    cd arcsec-tool/
    sudo cp bin/arcsec-tool /usr/bin/
    arcsec-tool

For help Use...

    arcsec-tool [OPTIONS] 
    
    OPTIONS: 
        -h | --help
        -l | --log
        -c | --clear

<details>

<summary>Screenshots</summary>

<br />

<b>--> arcsec-tool (OR) ./security_check.sh</b>

<img width="1920" height="1080" alt="screenshot-2025-12-22_13-32-02" src="https://github.com/user-attachments/assets/bc7e1735-8aa8-4e3b-b080-51eabf648fe4" /><br />

<br />

<b>--> arcsec-tool -n (OR) ./security_check.sh -n</b>

<img width="1920" height="1080" alt="screenshot-2025-12-22_13-32-34" src="https://github.com/user-attachments/assets/78e3bd21-be38-4e6f-aa2f-c516b432aa3a" /><br />

<br />

<b>--> arcsec-tool -h (OR) ./security_check.sh -h</b>

<img width="1920" height="1080" alt="screenshot-2025-12-22_13-32-52" src="https://github.com/user-attachments/assets/dd8867db-8132-4523-8fab-6285bb0c36cf" /><br />

<br />

<b>--> arcsec-tool -l (OR) ./security_check.sh -l</b>

<img width="1920" height="1080" alt="screenshot-2025-12-22_13-33-13" src="https://github.com/user-attachments/assets/5648db7d-74bb-42c5-abc6-399f2d3dbb81" /><br />

<br />

<b>--> arcsec-tool -c (OR) ./security_check.sh -c</b>

<img width="1920" height="1080" alt="screenshot-2025-12-22_13-33-38" src="https://github.com/user-attachments/assets/13fe6a0a-0795-40d0-a7b5-3359e6080465" /><br />

<br />

</details>

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

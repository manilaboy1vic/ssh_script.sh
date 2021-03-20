# ssh_script.sh
#  I created this script on my Linux machine to ssh to switches/routers that are configured with different login IDs.. No TACACS on any device on the network.
This is for use on a Linux or FreeBSD .. <BR>
Install sshpass: <BR>
sudo apt install sshpass<BR>
mkdir ~/pass<BR>
touch ~/pass/pass1; touch ~/pass/pass2; etc.....<BR>
cd ~/pass; chmod * 400<BR>
cd ~<BR>
chmod +x ssh_script.sh<BR>
create alias for .bashrc or .zshrc<BR>
run script, fill in blanks<BR>
 

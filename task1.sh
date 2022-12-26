 #!/bin/bash
install_awscli()
{
    sudo apt-get update
   sudo apt-get -y install awscli
    if [ $? -ne 0 ]; then
    echo "awscli not installed"
    fi
    echo "awscli installed successfully"
}
install_netcat()
{
   sudo apt-get update
   sudo apt-get -y install netcat
    if [ $? -ne 0 ]; then
    echo "netcat not installed"
    fi
    echo "netcat installed successfully"
}
tsh() { 
   apt update -y
   sudo curl https://apt.releases.teleport.dev/gpg \
-o /usr/share/keyrings/teleport-archive-keyring.asc
source /etc/os-release
echo "deb [signed-by=/usr/share/keyrings/teleport-archive-keyring.asc] \
https://apt.releases.teleport.dev/${ID?} ${VERSION_CODENAME?} stable/v11" \
| sudo tee /etc/apt/sources.list.d/teleport.list > /dev/null
sudo apt-get update
sudo apt-get install teleport
if [ $? -ne 0 ]; then
    echo "tsh not installed"
    fi
    echo "tsh installed successfully"
}
install_awscli
install_netcat
tsh

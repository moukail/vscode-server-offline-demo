### Download vscode cli and server
use b browser and download 

https://update.code.visualstudio.com/commit:7d842fb85a0275a4a8e4d7e040d2625abbf7f084/cli-alpine-x64/stable

https://update.code.visualstudio.com/commit:7d842fb85a0275a4a8e4d7e040d2625abbf7f084/server-linux-x64/stable

### Download vscode extentions
https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/remote-ssh/0.120.0/vspackage

https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/ansible/25.9.0/vspackage

https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/vscode-yaml/1.19.1/vspackage

### Copy files to SDL
user CTL+C to copy and CTL+V to paste the files to SDL 

### Open PowerShell
copy the files to the remote linux server with scp

scp vscode-cli.tar.gz <user>@<ip>:~
scp vscode-server.tar.gz <user>@<ip>:~

scp redhat.ansible-25.9.0.vsix <user>@<ip>:~
scp redhat.vscode-yaml-1.19.1.vsix <user>@<ip>:~

### In the remote machine
#### verify it is a zip file
file remote-ssh-0.120.0.vsix

#### run this bash script
```bash
COMMIT=7d842fb85a0275a4a8e4d7e040d2625abbf7f084

mkdir ~/.vscode-server
cd ~/.vscode-server

mv ~/vscode-cli.tar.gz .
mv ~/vscode-server.tar.gz .

## Extract CLI
tar -xzf vscode-cli.tar.gz
mv code code-${COMMIT}

## Extract Server
mkdir -p cli/servers/Stable-${COMMIT}
tar -xzf vscode-server.tar.gz -C cli/servers/Stable-${COMMIT}
mv cli/servers/Stable-${COMMIT}/vscode-server-linux-x64 cli/servers/Stable-${COMMIT}/server
```

### In SDL 
Open vscode and connect to the remote machine, when connected open the extentions window and select the extentions you want to install
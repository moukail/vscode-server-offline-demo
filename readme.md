### Get VScode commit hash
```bash
code --version
```

### Download files
```bash
COMMIT=7d842fb85a0275a4a8e4d7e040d2625abbf7f084
wget https://update.code.visualstudio.com/commit:${COMMIT}/cli-alpine-x64/stable -O .vagrant/scripts/vscode-cli.tar.gz
wget https://update.code.visualstudio.com/commit:${COMMIT}/server-linux-x64/stable -O .vagrant/scripts/vscode-server.tar.gz
```

### Download VScode extentions
```bash
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/remote-ssh/0.120.0/vspackage -O remote-ssh-0.120.0.vsix.gz
gunzip remote-ssh-0.120.0.vsix.gz

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/remote-ssh-edit/0.87.0/vspackage -O remote-ssh-edit-0.87.0.vsix.gz
gunzip remote-ssh-edit-0.87.0.vsix.gz

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode/vsextensions/remote-explorer/0.5.0/vspackage -O remote-explorer-0.5.0.vsix.gz
gunzip remote-explorer-0.5.0.vsix.gz

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/ansible/25.9.0/vspackage -O .vagrant/scripts/redhat.ansible-25.9.0.vsix.gz
gunzip .vagrant/scripts/redhat.ansible-25.9.0.vsix.gz

curl -L -o .vagrant/scripts/redhat.vscode-yaml-1.19.1.vsix.gz https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/vscode-yaml/1.19.1/vspackage
gunzip .vagrant/scripts/redhat.vscode-yaml-1.19.1.vsix.gz
```

### In VSCode
Go to Manage > Extensions > More Action (...) > Install from VSIX... And select remote-ssh, remote-ssh-edit and remote-explorer
or 
```bash
### verify it is a zip file
file remote-ssh-0.120.0.vsix
unzip -t remote-ssh-0.120.0.vsix
### install extensions
code --install-extension remote-ssh-0.120.0.vsix --force
code --install-extension remote-ssh-edit-0.87.0.vsix --force
code --install-extension remote-explorer-0.5.0.vsix --force
```

Click on Open a Remote Window > Connect to Host... > Add New SSH Host... 
When connected to the remote machine
Go to Manage > Extensions > More Action (...) > Install from VSIX... And select scripts/redhat.ansible-25.9.0.vsix and scripts/redhat.vscode-yaml-1.19.1.vsix

### Configure vscode 
```bash
dnf  install jq

jq '."remote.SSH.allowLocalServerDownload" = true' ~/.config/Code/User/settings.json > tmp.$$.json && mv tmp.$$.json ~/.config/Code/User/settings.json

jq '."remote.SSH.useLocalServer" = true' ~/.config/Code/User/settings.json > tmp.$$.json && mv tmp.$$.json ~/.config/Code/User/settings.json

jq . ~/.config/Code/User/settings.json

```
### Review the installed extentions
```bash
code --list-extensions --show-versions
jq . .vscode-server/extensions/extensions.json | less
```

### Vagrant
```bash
vagrant ssh machine1 -c ifconfig
ssh vagrant@192.168.56.10
```

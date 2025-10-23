### Get VScode commit
```bash
code --version
```

### Download files

```bash
COMMIT=03c265b1adee71ac88f833e065f7bb956b60550a
wget https://update.code.visualstudio.com/commit:${COMMIT}/cli-alpine-x64/stable -O .vagrant/scripts/vscode-cli.tar.gz

wget https://update.code.visualstudio.com/commit:${COMMIT}/server-linux-x64/stable -O .vagrant/scripts/vscode-server.tar.gz
```

### In Vagrant
```bash
vagrant up
vagrant ssh machine1
```

### Download VScode extentions
```bash
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/remote-ssh/0.120.0/vspackage -O remote-ssh-0.120.0.vsix.gz

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/remote-ssh-edit/0.87.0/vspackage -O remote-ssh-edit-0.87.0.vsix.gz

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode/vsextensions/remote-explorer/0.5.0/vspackage -O remote-explorer-0.5.0.vsix.gz

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/ansible/25.9.0/vspackage -O redhat.ansible-25.9.0.vsix.gz

gunzip redhat.ansible-25.9.0.vsix.gz

curl -L -o redhat.vscode-yaml-1.19.1.vsix.gz https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/vscode-yaml/1.19.1/vspackage

gunzip redhat.vscode-yaml-1.19.1.vsix.gz

### verify it is a zip file
file redhat.vscode-yaml-1.19.1.vsix
unzip -t redhat.vscode-yaml-1.19.1.vsix
### install extention
code --install-extension redhat.vscode-yaml-1.19.1.vsix --force


jq 'if has("remote.SSH.allowLocalServerDownload") then . else . + {"remote.SSH.allowLocalServerDownload": true} end' /home/imoukafih/.vscode/argv.json > tmp.$$.json && mv tmp.$$.json /home/imoukafih/.vscode/argv.json

jq '.remote.SSH.useLocalServer = true' . /home/imoukafih/.vscode/argv.json > tmp.$$.json && mv tmp.$$.json . /home/imoukafih/.vscode/argv.json

jq . /home/imoukafih/.vscode/argv.json


.vscode-server/code-03c265b1adee71ac88f833e065f7bb956b60550a ext install --force redhat.vscode-yaml-1.19.1.vsix
```
### Review the installed extentions
```bash
code --list-extensions --show-versions

dnf  install jq
jq . .vscode-server/extensions/extensions.json | less
```

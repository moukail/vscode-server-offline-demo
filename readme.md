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
wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/remote-ssh/0.120.0/vspackage -O remote-ssh-0.120.0.vsix

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode-remote/vsextensions/remote-ssh-edit/0.87.0/vspackage -O remote-ssh-edit-0.87.0.vsix

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-vscode/vsextensions/remote-explorer/0.5.0/vspackage -O remote-explorer-0.5.0.vsix

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/ansible/25.9.0/vspackage -O redhat.ansible-25.9.0.vsix

wget https://marketplace.visualstudio.com/_apis/public/gallery/publishers/redhat/vsextensions/vscode-yaml/1.19.1/vspackage -O redhat.vscode-yaml-1.19.1.vsix
```

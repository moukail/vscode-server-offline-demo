#!/bin/bash

COMMIT=03c265b1adee71ac88f833e065f7bb956b60550a

mkdir ~/.vscode-server
cd ~/.vscode-server

wget https://update.code.visualstudio.com/commit:${COMMIT}/cli-alpine-x64/stable -O vscode-cli-${COMMIT}.tar.gz

tar -xzf vscode-cli-${COMMIT}.tar.gz
mv code code-${COMMIT}

wget https://update.code.visualstudio.com/commit:${COMMIT}/server-linux-x64/stable -O vscode-server.tar.gz

mkdir -p cli/servers/Stable-${COMMIT}
tar -xzf vscode-server.tar.gz -C cli/servers/Stable-${COMMIT}
mv cli/servers/Stable-${COMMIT}/vscode-server-linux-x64 cli/servers/Stable-${COMMIT}/server

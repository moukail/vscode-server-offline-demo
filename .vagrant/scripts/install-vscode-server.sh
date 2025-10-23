#!/bin/bash

COMMIT=03c265b1adee71ac88f833e065f7bb956b60550a

mkdir ~/.vscode-server
cd ~/.vscode-server

mv ../scripts/vscode-cli.tar.gz .
mv ../scripts/vscode-server.tar.gz .

#wget https://update.code.visualstudio.com/commit:${COMMIT}/cli-alpine-x64/stable -O vscode-cli.tar.gz
#wget https://update.code.visualstudio.com/commit:${COMMIT}/server-linux-x64/stable -O vscode-server.tar.gz

## Extract CLI
tar -xzf vscode-cli.tar.gz
mv code code-${COMMIT}

## Extract Server
mkdir -p cli/servers/Stable-${COMMIT}
tar -xzf vscode-server.tar.gz -C cli/servers/Stable-${COMMIT}
mv cli/servers/Stable-${COMMIT}/vscode-server-linux-x64 cli/servers/Stable-${COMMIT}/server

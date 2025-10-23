mkdir ~/.vscode-server
cd ~/.vscode-server

wget https://update.code.visualstudio.com/commit:03c265b1adee71ac88f833e065f7bb956b60550a/cli-alpine-x64/stable -O vscode-cli-03c265b1adee71ac88f833e065f7bb956b60550a.tar.gz

tar -xzf vscode-cli-03c265b1adee71ac88f833e065f7bb956b60550a.tar.gz
mv code code-03c265b1adee71ac88f833e065f7bb956b60550a

wget https://update.code.visualstudio.com/commit:03c265b1adee71ac88f833e065f7bb956b60550a/server-linux-x64/stable -O vscode-server.tar.gz
mkdir -p cli/servers/Stable-03c265b1adee71ac88f833e065f7bb956b60550a
tar -xzf vscode-server.tar.gz -C cli/servers/Stable-03c265b1adee71ac88f833e065f7bb956b60550a
mv cli/servers/Stable-03c265b1adee71ac88f833e065f7bb956b60550a/vscode-server-linux-x64 cli/servers/Stable-03c265b1adee71ac88f833e065f7bb956b60550a/server

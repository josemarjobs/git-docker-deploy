# inside the bare repo folder
git init --bare

# inside the normal repo folder
git clone <bare-repo-url>

# change post-receive hook mode
chmod +x bare/.git/hooks/post-receive

go mod init <package>
go get
GOOS=linux GOARCH=amd64 go build -o bin/app
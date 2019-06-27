# inside the bare repo folder
git init --bare

# inside the normal repo folder
git clone <bare-repo-url>

# change hook mode
chmod +x bare/.git/hooks/post-commit
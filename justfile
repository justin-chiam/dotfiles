# Update homebrew/Brewfile to match currently installed packages
brew-dump:
    brew bundle dump --file=homebrew/Brewfile --force

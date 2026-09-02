# Update homebrew/Brewfile to match currently installed packages
brew-dump:
    brew bundle dump --file=homebrew/Brewfile --force

# Update all Neovim plugins (lazy.nvim: install + clean + update)
nvim-update:
    nvim --headless "+Lazy! sync" +qa

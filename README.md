# ⚙️ dotfiles

Personal config files for my dev setup, deployed with [dotter](https://github.com/SuperCuber/dotter).

## setup

```sh
brew install dotter
git clone https://github.com/justin-chiam/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
cp .dotter/local.example.toml .dotter/local.toml    # update variables
dotter deploy
```
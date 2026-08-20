# Adding an app

1. Move the config into a new folder.

```sh
mkdir btop && mv ~/.config/btop/btop.conf btop/
```

2. Add it to `.dotter/global.toml`.

```toml
[btop.files]
"btop/btop.conf" = "~/.config/btop/btop.conf"
```

3. Add to `packages` in `.dotter/local.toml`.

4. `dotter deploy` (*optional:* use `--force`)

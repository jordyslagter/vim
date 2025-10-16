# Jordy Slagter's Neovim config

My own Neovim config based on [LazyVim](https://github.com/LazyVim/LazyVim).
LazyVim [documentation](https://lazyvim.github.io/installation) <-- available there.

This is a very minimal configuration that basically just configures the needed LSPs,
adds Oil support and adds rainbow delimiters.

# Installation

First, remove the current nvim config.

```bash
mv ~/.config/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Now clone this config repo.

```bash
git clone https://github.com/JordySlagter/vim ~/.config/nvim
```

Remove the `.git` folder so that you can make your own repo later.

```bash
rm -rf ~/.config/nvim/.git
```

Start Neovim.

```bash
nvim
```

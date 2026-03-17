# Jordy Slagter's Neovim config

My own Neovim config based on [LazyVim](https://github.com/LazyVim/LazyVim).
Designed to be used with my [tmux config](https://github.com/jordyslagter/tmux).
LazyVim [documentation](https://lazyvim.github.io/installation) <-- available there.

## Installation

### Requirements

#### MacOS

```fish
brew install neovim lua luajit git gh tree-sitter-cli gcc fzf ripgrep fd lazygit lazydocker
```

#### Fedora

```fish
dnf copr enable dejan/lazygit
dnf install neovim lua luajit git gh tree-sitter-cli gcc fzf ripgrep fd lazygit
```

### Copying the configuration

First, remove the current nvim config.

```fish
mv $XDG_CONFIG_HOME/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Now clone this config repo.

```fish
git clone https://github.com/jordyslagter/vim $XDG_CONFIG_HOME/nvim
```

Remove the `.git` folder so that you can make your own repo later.

```fish
rm -rf $XDG_CONFIG_HOME/nvim/.git
```

Start Neovim.

```fish
nvim
```

### Note on snacks gh

Sometimes logging in regulary via `gh auth login` might cause permission errors
when using snacks gh. To resolve these issues, run

```fish
gh auth login --scopes read:project
```

and log in again.

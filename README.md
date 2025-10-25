# Jordy Slagter's Neovim config

My own Neovim config based on [LazyVim](https://github.com/LazyVim/LazyVim).
Designed to be used with my [tmux config](https://github.com/jordyslagter/tmux).
LazyVim [documentation](https://lazyvim.github.io/installation) <-- available there.

This is a very minimal configuration that basically just configures the needed LSPs,
adds mini.files support and adds rainbow delimiters.

## Installation

Install the needed requirements:

```bash
brew install neovim git gh tree-sitter-cli gcc fzf ripgrep fd lazygit
```

First, remove the current nvim config.

```bash
mv ~/.config/nvim{,.bak}

mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Now clone this config repo.

```bash
git clone https://github.com/jordyslagter/vim ~/.config/nvim
```

Remove the `.git` folder so that you can make your own repo later.

```bash
rm -rf ~/.config/nvim/.git
```

Start Neovim.

```bash
nvim
```

### Note on octo.nvim

Sometimes logging in regulary via `gh auth login` might cause permission errors
when using octo.nvim. To resolve these issues, run
`gh auth login --scopes read:project` and log in again.

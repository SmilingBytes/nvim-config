# NeoVim Config
Try Out My NeoVim Config

**IMPORTANT:**  *Please take a backup (if any)*
```sh
mv ~/.config/nvim ~/.config/nvim.backup
```

## Pre-requisites:
- Neovim 0.7.0 [Install NeoVim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
- If neovim's very old for your OS then consider trying this [neovim version manager](https://github.com/MordechaiHadad/bob)
- Use a [Nerd Font](https://www.nerdfonts.com) in your terminal emulator.

### Semi-optional
- [ripgrep](https://github.com/BurntSushi/ripgrep) is required for grep searching with *Telescope*

# Install
## Linux / macos (UNIX)

1. Uninstall previous configurations:
```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```
2. Setup NvChad:
```sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```
3. Setup Custom Config:
```
git clone https://github.com/ismail-h-rana/nvim_config.git ~/.config/nvim/lua/custom --depth 1
cd ~/.config/nvim/lua/custom
nvim +PackerSync
```


# Update

**To update all:**
```sh
cd ~/.config/nvim
git pull
cd ~/.config/nvim/lua/custom
git pull
nvim +PackerSync
```

**To update only Plugins:**
```sh
<leader> + pu
```
**Note:** by default `<leader>` is the `<space>` key


# Post Install

**If you're new to NeoVim/Vim**

We strongly encourage you to learn how to use NeoVim/Vim, as it's more than a normal text editor.

These are highly recommend and a must do for any new Vimmer.

Vim Tutor:
```
:Tutor
```

**Get healthy**
```
:checkhealth
```
You'll probably notice you don't have support for copy/paste also that python and node haven't been setup

So let's fix that

First we'll fix copy/paste

  - On mac `pbcopy` should be builtin

  - On Ubuntu
    ```
    sudo apt install xsel
    ```
  - On Arch Linux
    ```
    sudo pacman -S xsel
    ```

Next we need to install **python support** (node is optional)

  - Neovim python support
    ```
    pip install pynvim
    ```
  - Neovim node support
    ```
    npm i -g neovim
    ```

Installing **LSP** for your language

  - Open nvim and just enter
    ```
    :LspInstall
    ```
    followed by `<TAB>` to see your options

Note: I recommend installing `lua` for autocomplete in custom configuration.


# Customization
```sh
cd ~/.config/nvim/lua/custom
nvim ~/.config/nvim/lua/custom
```
**File Structure:**
```sh
.
├── autocmds.lua
├── chadrc.lua
├── init.lua
├── init.vim
├── mappings.lua
├── options.lua
├── override.lua
├── plugins
│   ├── hop.lua
│   ├── init.lua
│   ├── lspconfig.lua
│   ├── null-ls.lua
│   └── whichkey.lua
└── README.md
```

## Themes

  - To change default theme: 
    ```
    <leader> + th
    ```
    `<leader>` is `<space>` in our config

## Mappings

  - Custom Keymappings:
    ```
    :Telescope keymaps
    ```
   
## Learn
    
# Uninstall

Uninstalling is as simple as removing the nvim configuration directories.

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

# License

MIT

**Free Software, Yeah!**

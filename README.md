# NeoVim Config

Try out my NeoVim config to turn your NeoVim into a powerful and beautiful IDE

<br/>

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

1. Uninstall previous configurations (if any)
```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```
2. Setup [NvChad](https://nvchad.github.io)
```sh
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

3. Setup Custom Config
```sh
rm -rf ~/.config/nvim/lua/custom
git clone https://github.com/ismail-h-rana/nvim-config.git ~/.config/nvim/lua/custom --depth 1
cd ~/.config/nvim/lua/custom && nvim
```

**Install/Update LSP & Plugins**
```sh
:MasonInstallAll
```
```sh
:Lazy
```
Then press <kbd>S</kbd>.

# Post Install

**If you're new to NeoVim/Vim**

I strongly encourage you to learn how to use NeoVim/Vim, as it's more than a normal text editor.

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

  - Open nvim then run the following command:
    ```
    :MasonInstallAll
    ```
    followed by <kbd>TAB</kbd> to see your options
    
    Move your cursor to LSP name, then press 
    
    <kbd>i</kbd> to `install/add` language server, 
    
    <kbd>X</kbd> to `remove` language server,
    
    <kbd>U</kbd> to `update` all (added) language server

Note: I recommend installing `lua` for autocomplete in custom configuration.

<br/>

**Mappings**

  - Checkout Keymaps:
    ```
    :Telescope keymaps
    ```
    
    **Note:** Press </kbd>Space</kbd> key to trigger `WhichKey`
    
<br/>

# Customization

<br/>

**Themes**

  - To change default theme: 
    ```sh
    <leader> + ft
    ```
    `<leader>` is <kbd>space</kbd> in our config
<br/><br>
    
**Edit Configuration**

```sh
cd ~/.config/nvim/lua/custom
nvim ~/.config/nvim/lua/custom
```
**Note:** Learn [How to customize](https://nvchad.github.io/config/Custom%20config)
<br/>

# Update

**Update NvChad:**
```sh
cd ~/.config/nvim
git pull
```

**Update Custom configs:**
```sh
cd ~/.config/nvim/lua/custom
git pull
```

**Update Plugins:**
```sh
:Lazy
```
 Move your cursor to plugin name, then press 
    
 <kbd>I</kbd> to Install or add, 

 <kbd>X</kbd> to Clear or remove,

 <kbd>U</kbd> to Update,

 <kbd>S</kbd> to Sync


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

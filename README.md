# Introduction
This repo hosts my personal nvim config, for which i use on Linux and Macos.

The entry point of the config is at `init.lua`, which calls `lua/nvim/bootstrap.lua` to initialise [lazy.nvim](https://github.com/folke/lazy.nvim), the plugin manager. Lazy then reads the `lua/nvim/plugins` directory for plugins. Then `lua/nvim/config.lua` is called containing nvim configs. Plugin specific configs are contained in their respective file inside of `lua/nvim/plugins`   

## Installation and setup
To install the config, clone the repo to your config folder, typically `~/.config/nvim` and run `nvim`. lazy then handles installing the plugins.
```
git clone https://github.com/harrisonablack/nvim.git ~/.config/nvim && nvim
```
### Linters, LSP's, DSP's and formatters
[mason.nvim](https://github.com/williamboman/mason.nvim) is used to manage LSPs, linters etc and as such can be installed using `:Mason` 

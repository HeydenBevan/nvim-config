# nvim-config

My ever-evolving config for Neovim.

The Platforms I mostly work on:
- Ubuntu (Windows Subsystem for Linux)
- Fedora
- macOS

**Note about Windows:** While I do use Windows for development, my config for
that is significantly smaller (4-5 plugins at most). This is due to Neovim on
PowerShell being an utterly disgusting experience.

## Getting Started

1. Install [Neovim](https://github.com/neovim/neovim/?tab=readme-ov-file#install-from-package) (v0.11 or above)
    - See [here](https://gist.github.com/tingspace/3d628593254950f7535b218f32996b85#installing-latest-neovim-on-ubuntu) for Ubuntu
2. Install `Roboto Mono` font from [Nerd Fonts](https://www.nerdfonts.com/font-downloads)
3. Install a C Compiler (For Treesitter)
    - Windows: [Visual Studio with C++ workloads](https://visualstudio.microsoft.com/vs/features/cplusplus/)
    - Linux: [clang](https://packages.fedoraproject.org/pkgs/llvm/clang/)
4. Install [ripgrep](https://github.com/BurntSushi/ripgrep#installation) (For telescope grep)
5. Delete, or rename, the existing `nvim` directory in:
    - Windows: `%USERPROFILE%\AppData\Local`
    - Linux/macOS: `~/.config` & `~/.local/share/nvim`
6. Clone this repo into the above path:

    *nix:
    ```bash
    git clone <REPO_URL> ~/.config/nvim
    ```

    Windows:
    ```powershell
    git clone <REPO_URL> "$env:USERPROFILE\AppData\Local\nvim"
    ```
7. `cd` into the newly cloned `nvim` directory
8. Run `nvim` and ensure [lazy.nvim](https://github.com/folke/lazy.nvim) 
installs itself and the required plugins

## Packages & Package Management

This project uses [lazy.nvim](https://github.com/folke/lazy.nvim) for Package 
Management.

The current Plugins & their configs can be found in the
`./lua/plugins` directory


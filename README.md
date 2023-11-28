# .config

## Things to install 
1. oh-my-posh
   ```bash
   curl -s https://ohmyposh.dev/install.sh | bash -s
   ```
2. atuin
    ```bash
    bash <(curl https://raw.githubusercontent.com/atuinsh/atuin/main/install.sh)
    ```
3. JetbrainsMono NerdFont
   ```
   https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
   ```
4. Packer for NVIM
   ```bash
   mkdir -p ~/.local/share/nvim/site/pack/packer/start/ && git clone --depth 1 https://github.com/wbthomason/packer.nvim
   ```
   then, open `nvim` and hit `:PackerSync`
5. NVIM
    - Not sure how I did it originally, probably build from source
    - They have a download link : https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
6. TMUX
   ```bash
   git clone https://github.com/tmux/tmux.git
   cd tmux
   sh autogen.sh
   ./configure && make
   ```
7. Poetry (PyPoetry)
   ```bash
   curl -sSL https://install.python-poetry.org | python3 -
   ```
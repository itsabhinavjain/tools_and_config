## Use case 
- Use for making quick edits to the markdown files from the terminal - 
	- Code folding  
	- Table of content preview 
	- Wikilink support
- Search : Folders, Files, Files (containing text) 
- Language servers

## Customisation 
- Plugins - Use the `Lazy plugin manager`
	- `Telescope` - Use to search files and folders 

- For now want to keep it very minimal 
	- Kickstart 
	- Distros 
		- Lazyvim (Choose this)
		- NvChad 
		- AstroNvim 

## Keybindings
- General or Custom

## Notes 
- lua is better way to manage configurations rather than vimscript 
- Don't start from scratch. Takes a lot of time. Start with one of the preconfigured one

Complete Cleanup 
```
pkill nvim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

Install dependencies
```
brew install tree-sitter
brew install ripgrep 
brew install fd
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code-nerd-font
```

Kickstarter
```
pkill nvim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

git clone https://github.com/nvim-lua/kickstart.nvim.git ~/.config/nvim
rm -rf ~/.config/nvim/.git
# FIX : In the file ~/.config/nvim/init.lua
# Change : main = 'nvim-treesitter.configs'
# To     : main = 'nvim-treesitter'
# sed -i '' "s/main = 'nvim-treesitter.configs',/main = 'nvim-treesitter',/" ~/.config/nvim/init.lua
nvim --headless "+Lazy! sync" +qa
nvim
```

Lazyvim
```
pkill nvim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

AstoNvim
```
pkill nvim
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim
```

## Common Commands 
```
:checkhealth nvim-treesitter              # Checking the health
:Lazy                                     # Plugin Manager 
:Mason                                    # LSP Management 

: ff                                      # Checking the health
: fg                                      # Grep 
: e                                       # Explorer

```
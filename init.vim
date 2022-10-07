call plug#begin('~/.vim/plugged')
Plug 'jnurmine/Zenburn'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'windwp/nvim-ts-autotag'
Plug 'windwp/nvim-autopairs'
Plug 'mg979/vim-visual-multi'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'neovim/nvim-lspconfig'
Plug 'onsails/lspkind-nvim' 
Plug 'L3MON4D3/LuaSnip'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/typescript.nvim'
Plug 'MunifTanjim/prettier.nvim'
Plug 'lewis6991/gitsigns.nvim' 
Plug 'glepnir/lspsaga.nvim'
call plug#end()

set noic
set hls is
syntax on
set number

"default indentation
set expandtab
set shiftwidth=2
set tabstop=2

"file type overrides
augroup filetypedetect
  au! BufRead,BufNewFile *.h setfiletype c
  au! BufRead,BufNewFile *.x setfiletype asm
  au! BufRead,BufNewFile *.s setfiletype asm
  au! BufRead,BufNewFile *.asm setfiletype asm_ca65
  au! BufRead,BufNewFile *.inc setfiletype asm_ca65
  au! BufRead,BufNewFile *.tsx setfiletype javascript
  au! BufRead,BufNewFile *.ts setfiletype javascript
  au! BufRead,BufNewFile *.json setfiletype json
augroup END

"language specific indentation
autocmd FileType c set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType h set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType asm set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType asm_ca65 set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType make set noexpandtab tabstop=8 shiftwidth=8
autocmd FileType python set tabstop=4 shiftwidth=4
autocmd FileType rust set tabstop=4 shiftwidth=4

set backupdir^=~/.vim/backups
colors zenburn

:lua require('base')

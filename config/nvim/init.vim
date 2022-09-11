" Basic settings
set scrolloff=5
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
syntax on
set clipboard=unnamedplus
set encoding=utf-8
set fileencodings=utf-8,cp1251
set nocompatible
" set completeopt=menu,menuone,noselect
filetype indent on

" Plugins settings
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'		" NerdTREE
Plug 'ryanoasis/vim-devicons'	" icons for vim
Plug 'sainnhe/gruvbox-material'	" general theme
Plug 'vim-airline/vim-airline'	" status tabline
Plug 'vim-airline/vim-airline-themes'	" themes for vim-airline
Plug 'mattn/emmet-vim'			" improving of html/css workflow
Plug 'nvim-lua/plenary.nvim'	" lua function module for telescope
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }	" file finder
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'L3MON4D3/LuaSnip'
Plug 'davidhalter/jedi-vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

let g:python3_host_prog = '/usr/bin/python3'
set pyxversion=3
let g:jedi#show_call_signatures = "0"

" Gruvbox Material theme settings
let g:gruvbox_contrast_dark = "medium"
let g:gruvbox_material_background = "hard"
let g:gruvbox_material_ui_contrast = "high"
let g:gruvbox_material_cursor = "purple"
let g:gruvbox_material_show_eob = 0
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_transparent_bg=1
let g:gruvbox_material_visual = 'red background'
let g:gruvbox_material_current_word='grey background'
let g:gruvbox_material_statusline_style = 'original'
let g:gruvbox_material_palette = 'mix'
set bg=dark
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'violet'
let g:airline_theme = 'gruvbox_material'
colorscheme gruvbox-material

" vim-emmet settings for html/css only
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall

" Telescope bingings
nnoremap ,ff <cmd>Telescope find_files<cr>
nnoremap ,fg <cmd>Telescope live_grep<cr>

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>

" turn off search highlight
nnoremap ,<space> :nohlsearch<CR>

" Press Ctrl+N to activate NerdTree pane
let NERDTreeShowHidden = 1
nnoremap <C-n> :NERDTreeToggle<CR>

" Telescope fzf plugin enable
lua << EOF
require('telescope').setup{
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",

		}
	}
}
require('telescope').load_extension('fzf')
EOF

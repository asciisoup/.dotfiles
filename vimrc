" set the runtime path to include Vundle and initilize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'flazz/vim-colorschemes'
Plugin 'sainnhe/gruvbox-material'
Plugin 'mattn/emmet-vim'
Plugin 'davidhalter/jedi-vim'
" Plugin 'psf/black'
" Plugin 'python-mode/python-mode'

" All of your Plugin must be added before the following line
call vundle#end()
filetype plugin indent on

set number
set encoding=utf-8
set fileencodings=utf-8,cp1251
set clipboard=unnamed
set nocompatible
set t_Co=256
filetype off
syntax on
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key=','
autocmd FileType html,css EmmetInstall

" let g:black_quiet = 1
" let g:black_linelength = 122

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

" highlight Normal ctermbg=NONE guibg=NONE
" highlight NonText ctermbg=NONE guibg=NONE

set tabstop=4
set softtabstop=4
set shiftwidth=4
" set textwidth=79
set expandtab
set autoindent

let python_highlight_all=1
" set bg=dark

nnoremap <C-n> :NERDTreeToggle<CR>

set tabstop=4
set number
syntax on
set clipboard=unnamedplus
set encoding=utf-8
set fileencodings=utf-8,cp1251
set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/gruvbox-material'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

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

" Press Ctrl+N to activate NerdTree pane
let NERDTreeShowHidden = 1
nnoremap <C-n> :NERDTreeToggle<CR>

set number
set nowrap

noremap <Leader>fu :Ag --case-sensitive <C-R><C-W><CR>

:cab f FZF
:cab ff Ag
:cab lh GundoToggle<CR>

imap <c-u> <esc>vaw<s-u>ea
nmap <c-u> vaw<s-u>e
nmap <c-u> vaw<s-u>e
nmap <S-T> :Open(alternate#FindAlternate())<Enter>


syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
runtime macros/matchit.vim

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

""""""""""
" Plugins
""""""""""
call plug#begin($HOME . '/.vim/plugged')

" Make sure you use single quotes
Plug 'rust-lang/rust.vim'
Plug 'junegunn/seoul256.vim'
Plug 'https://github.com/jpo/vim-railscasts-theme.git'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'rking/ag.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'Valloric/YouCompleteMe', { 'on': [] }
Plug 'kchmck/vim-coffee-script'

" Using git URL
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git' " require for snipmate
Plug 'https://github.com/tomtom/tlib_vim.git' " required for snipmate
Plug 'https://github.com/garbas/vim-snipmate.git'
Plug 'https://github.com/vim-scripts/SearchComplete.git'
Plug 'https://github.com/compactcode/alternate.vim.git'
Plug 'https://github.com/compactcode/open.vim.git'
Plug 'http://github.com/tpope/vim-fugitive.git'
Plug 'http://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'https://github.com/vim-scripts/vim-auto-save.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
filetype plugin on " for nerd commenter plugin

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': $HOME . '/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug $HOME . '/my-prototype-plugin'

call plug#end()

""""""""""""
"  Airline
""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{fugitive#statusline()}'

"""""""""""
" Autosave
""""""""""
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode

""""""""""""""
" Color Scheme
""""""""""""""
colorscheme railscasts

"""""""""""""""""
" You complete me
"""""""""""""""""
"augroup load_us_ycm
  "autocmd!
  "autocmd InsertEnter * call plug#load('YouCompleteMe')
                     "\| call youcompleteme#Enable() | autocmd! load_us_ycm
"augroup END

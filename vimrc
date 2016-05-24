set number " turn on line numbers
set relativenumber " make line numbers relative to the current line
set nowrap " don't wrap lines that go over a screens width
set cursorline " highlight the line the cursor is on
set showmatch
set incsearch  " search as characters are entered
set hlsearch   " highlight matches when searching
set autoread   " Set to auto read when a file is changed from the outside
set lazyredraw " Don't redraw while executing macros (good performance config)
set nrformats= " treat all numbers as decimal not octal
set noswapfile " don't create swap files
set smartcase  " case insensitive search


" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

noremap <Leader>fu :Ag --case-sensitive "\W<C-R><C-W>\W" <CR>
noremap <Leader>u :GundoToggle<CR>

:cab f FZF
:cab ff Ag

imap <c-u> <esc>vaw<s-u>ea
nnoremap <c-u> vaw<s-u>e
nnoremap <S-T> :Open(alternate#FindAlternate())<Enter>

" Shortcuts for 'inside' movements
"  eg: 'd('  instead of 'di('
onoremap ( i(
onoremap ) i)
vnoremap ( i(
vnoremap ) i)


syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
runtime macros/matchit.vim

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set hidden

"""""""""""
"" Plugins
"""""""""""
call plug#begin($HOME . '/.vim/plugged')

"" Make sure you use single quotes
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/jpo/vim-railscasts-theme.git'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'rking/ag.vim'
Plug 'jlanzarotta/bufexplorer'

"" Using git URL
Plug 'https://github.com/mxw/vim-jsx.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git' " require for snipmate
Plug 'https://github.com/tomtom/tlib_vim.git' " required for snipmate
Plug 'https://github.com/garbas/vim-snipmate.git'
Plug 'https://github.com/compactcode/alternate.vim.git'
Plug 'https://github.com/compactcode/open.vim.git'
Plug 'http://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/vim-scripts/vim-auto-save.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/djoshea/vim-autoread.git'
filetype plugin on " for nerd commenter plugin

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf'

" Unmanaged plugin (manually installed and updated)
" Plug $HOME . '/my-prototype-plugin'

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
silent! colorscheme railscasts

"""""""""""""""
" JSX syntax highlighting
"""""""""""""""
let g:jsx_ext_required = 0  " Highlight .js as well as .jsx files

"""""""""""""""""""
" Vim Move
" """""""""""""""""
let g:move_key_modifier = 'C'

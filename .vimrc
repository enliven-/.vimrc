

set nocompatible
filetype off
filetype plugin indent on
set exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'justinmk/vim-sneak'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scwood/vim-hybrid'
Plugin 'taglist.vim'
Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'terryma/vim-expand-region'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
call vundle#end()

" Overall window look
let g:NERDTreeWinPos = "right"
set background=dark
colorscheme hybrid
set guioptions-=r
set guioptions-=L
syntax enable

" Config settings
let mapleader = "\<Space>"
nnoremap <Leader>nt :NERDTree<CR>

nnoremap <Leader>bc :bd<CR>
nnoremap <Leader>bC :bd!<CR>
nnoremap <Leader>bw :w<CR>
nnoremap <Leader>bW :wq<CR>
nnoremap <Leader>bn :new<CR>

nnoremap <Leader>op <C-^>

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

nnoremap <Leader>ve :split $MYVIMRC<CR>
nnoremap <Leader>so :source %<CR>

nnoremap <Leader>br :edit<CR>
nnoremap <Leader>bR :edit!<CR>

nnoremap <Leader>==  m1gg=G`1

set autoread
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set showcmd
set number
set cursorline
set autoindent
set list listchars=tab:»·,trail:·,nbsp:· " Display extra whitespace

" easy splits
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
set splitbelow
set splitright
nnoremap ≥ :vertical resize +20<CR>
nnoremap ≤ :vertical resize -20<CR>
nnoremap ∆ :resize +10<CR>
nnoremap ˚ :resize -10<CR>

" Other shortcuts
nnoremap ˙ :noh<CR> " alt-h => turn off highlighting

" For frequent used commands  
nnoremap <D-s> :w<CR>
inoremap <D-s> <ESC>:w<CR>
nnoremap <C-d> <C-]>
inoremap <C-d> <C-]>

" For faster moves
nnoremap <S-j> 10j
nnoremap <S-k> 10k
nnoremap B ^
nnoremap E $

nnoremap <Tab> m1v>`14l
nnoremap <S-Tab> m1v<`14h
vnoremap <Tab> m1>`14lgv
vnoremap <S-Tab> m1<`14hgv

" Easily move lines up or down in all modes
"nnoremap <S-j> :m .+1<CR>==
"nnoremap <S-k> :m .-2<CR>==
"inoremap <S-j> <Esc>:m .+1<CR>==gi
"inoremap <S-k> <Esc>:m .-2<CR>==gi
"vnoremap <S-j> :m '>+1<CR>gv=gv
"vnoremap <S-k> :m '<-2<CR>gv=gv

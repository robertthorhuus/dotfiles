set nocompatible
filetype off

"source ~/.vim/vimrc.first
source ~/.vim/vimrc.bundles

set rtp+=/usr/lib/python2.7/dist-packages/powerline/bindings/vim

"""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""
filetype plugin indent on
set history=1000
set autoread
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set backspace=2
set nobackup
set nowritebackup
set noswapfile
set showcmd
set showmode
set autoindent
set smartindent
set wildmenu
set wildmode=list:longest
set novisualbell
set noerrorbells
set t_vb=
set tm=500
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set number
set rnu
set ttyfast
set termencoding=utf-8
syntax on
set encoding=utf-8
set laststatus=2
set lazyredraw
set splitbelow
set splitright
set title
set linebreak
set path+=**

""""""""""""""""""""""""""""""
" Apperance
""""""""""""""""""""""""""""""
set t_Co=256
set background=dark
colorscheme badwolf
"let g:airline_theme='molokai'
set cursorline
"hi CursorLine cterm=underline ctermbg=none ctermfg=none
set cc=80
"hi ColorColumn ctermbg=red
set list
set listchars=""
set listchars=eol:+
set listchars+=tab:>-
"hi StatusLine cterm=none ctermbg=black ctermfg=white
"hi StatusLineNC cterm=none ctermbg=black ctermfg=white
"hi bufferline_selected cterm=none ctermbg=black ctermfg=white

" Whitespaces
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()

"""""""""""""""""""
" Key Mappings
"""""""""""""""""""
" Learn
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

command W w
command Wq wq
command WQ wq
command Q q

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" LEADER
let mapleader = ","
vnoremap <Leader>s :sort<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nnoremap <Leader>p  :CtrlP<CR>
nnoremap <Leader>.  :CtrlPTag<CR>
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

set errorformat=%A%f:%l:\ %m,%C%m
noremap <M-1> :w<CR>:set ch=5<CR>:make -d C:\\dev\\classes %:p<CR>
noremap <M-2> :cp<CR>
noremap <M-3> :cn<CR>
noremap <M-4> :cl<CR>



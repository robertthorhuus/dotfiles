" Vundle Start
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jisaacks/GitGutter'
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'wesleyche/SrcExpl'
Plugin 'wesleyche/Trinity'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/cscope_macros.vim'
Plugin 'scrooloose/syntastic'
" Plugin 'powerline/powerline', {'rtp': '~/.local/lib/python2.7/site-packages/powerline/bindings/vim'}
call vundle#end()
" Vundle End

filetype plugin indent on
set autoread
set cursorline
set clipboard=unnamed
set mouse=a

" TAB
set tabstop=4
set shiftwidth=4
" or
" SPACES
"set expandtab
"set softtabstop=2
"set shiftwidth=2


set number
set tw=79
set backspace=2
set mousetime=750
set nobackup
set nowritebackup
set noswapfile

" REMAP
vmap Q gq
nmap Q gqap

" LEADER
let mapleader = ","
vnoremap <Leader>s :sort<CR>
nnoremap <Leader>.  :CtrlPTag<CR>
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" VISUAL
set term=xterm-256color
set termencoding=utf-8
syntax on
set mousemodel=extend
set t_Co=256
set encoding=utf-8
"let g:Powerline_symbols = 'fancy'
set mouseshape=i:arrow,r:arrow,s:udsizing,m:no

" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red	guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd Syntax * syn match ExtraWhitespace /\s\+$/| \+\ze\t/
" autocmd BufWinLeave * call clearmatches()
" highlight CursorLine ctermbg=233
" color wombat256mod
" This is default in Unix, but it must be check in Win32!
" au InsertEnter * hi StatusLine term=reverse ctermbg=9 gui=undercurl guisp=Magenta
" au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=12 gui=bold,reverse
set colorcolumn=80
" highlight ColorColumn ctermbg=233
set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_powerline_fonts = 1

"=============================================================================
" Functions
"=============================================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggles absolute and relative Line Numbering with C-n
function! NumberToggle()
	if(&relativenumber == 1)
		set number
	else
		set rnu
	endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""


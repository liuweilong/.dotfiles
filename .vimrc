" Vundle start
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The bundles you install will be listed here
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'aperezdc/vim-template'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'davidhalter/jedi-vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'wikitopian/hardmode'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/eclim'
" Exchange two different words, cx for selection, cxx for line
Plugin 'tommcdo/vim-exchange'
Plugin 'benmills/vimux'
" ---------- abandoned----------  
"Plugin 'https://github.com/neilagabriel/vim-geknote'
"Plugin 'Yggdroot/indentLine'
" ---------- abandoned----------  

call vundle#end()
filetype plugin indent on
" Vundle end

let base16colorspace=256
set t_Co=256
set background=dark
colorscheme base16-railscasts

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
elseif exists('$TMUX')
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
else
    let &t_SI = "\e[5 q"
    let &t_EI = "\e[2 q"
endif

" Syntax
syntax on

" jedi-vim
let g:jedi#auto_initialization = 0

" Enable hardmode
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"

"Vim-Template
"let g:templates_directory = '~/.vim/templates'
let g:username = 'liuweilong'
let g:email = 'viclong1993@gmail.com'

" Indentation
set list lcs=tab:\|\ 

" GeekNote
"noremap <F8> :Geeknote<cr>
"let g:GeeknoteFormat="markdown"

" Nerdtree
let NERDTreeIgnore = ['\.pyc$']

" Search set, highlight searched word
set incsearch
set smartcase

" Set folding
set foldlevelstart=99
set foldmethod=indent
nnoremap <space> za

" Powerline setup
set guifont=Source\ Code\ Pro\ for\ Powerline\:h13
set laststatus=2

" Emmet
"let g:user_emmet_leader_key='<C-e>'

" Display line number
"set number
set relativenumber

" Set tabsize
" size of a hard tabstop
"set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" (Hopefully) removes the delay when hitting esc in insert mode
" Works like magic, solved the esc delay problem when use FuzzyFinder 
set noesckeys
set ttimeout
set ttimeoutlen=1

set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent " always set autoindenting on

" Set Key Mapping
map <F2> :NERDTreeToggle<CR>
map <C-j> :tabprevious<CR>
map <C-k> :tabnext<CR>
map <C-/> :NERDComComment<CR>

" Map jj to Esp key
inoremap jk <Esc>
"map jk <Esc>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Toggle between hardmode and easymode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" Fuzzy Finder
nmap <leader>f :FufFileWithCurrentBufferDir<CR>
nmap <leader>b :FufBuffer<CR>
nmap <leader>t :FufTaggedFile<CR>

" Map Ctrl-s to save
map <leader>s <esc>:w<CR>
imap <leader>s <esc>:w<CR>a

" Leaders
map <leader>vr :BundleInstall<CR>
map <leader>r :source ~/.vimrc<CR>

let base16colorspace=256
set t_Co=256
set background=dark
colorscheme base16-railscasts

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
	let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Vundle start
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" The bundles you install will be listed here
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'https://github.com/aperezdc/vim-template'
" Pick the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'https://github.com/davidhalter/jedi-vim'
Plugin 'https://github.com/Rip-Rip/clang_complete'
Plugin 'https://github.com/wikitopian/hardmode'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/ervandew/eclim'
" ---------- abandoned----------  
"Plugin 'https://github.com/neilagabriel/vim-geknote'
"Plugin 'Yggdroot/indentLine'
" ---------- abandoned----------  

call vundle#end()
filetype plugin indent on
" Vundle end
" Syntax
syntax on

" Enable hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
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

" Search set
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
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
"set softtabstop=4

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
nmap ,f :FufFileWithCurrentBufferDir<CR>
nmap ,b :FufBuffer<CR>
nmap ,t :FufTaggedFile<CR>

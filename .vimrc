call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'

"cd ~/.vim/bundle/YouCompleteMe
"./install.py --tern-completer
"Plug 'valloric/youcompleteme'

call plug#end()

colorscheme molokai

" Disable error bells
set noerrorbells
set visualbell
set t_vb=

" Defaults
set splitbelow
set splitright
set guifont=Consolas:h13
set listchars=tab:•\ ,eol:¬,trail:~
set guioptions-=T
set laststatus=2
set autoindent
set expandtab

" Scrollbars
set scrolloff=10
set sidescrolloff=2
set number
set numberwidth=4

"Cursor Highlights
set cursorline
set hlsearch " Highlight search
set incsearch
set ignorecase
set smartcase

" Line Wrapping
set nowrap
set textwidth=79
set formatoptions=qrn1
set linebreak  " Wrap at wo

" TABS ---------------------
 
function! Tabstyle_tabs()
  " Using 4 column tabs
  set softtabstop=4
  set shiftwidth=4
  "set tabstop=4
  set noexpandtab
endfunction
 
function! Tabstyle_spaces()
  " Use 2 spaces
  set softtabstop=4
  set shiftwidth=4
  set tabstop=4
  set expandtab
endfunction

function! Tabstyle_makefile()
  " Using 4 column tabs
  set noexpandtab
  set softtabstop=4
  set shiftwidth=4
  set tabstop=8
endfunction
 
call Tabstyle_spaces()
 
" Ctrl-C is copy (linewise if nothing is selected)
:noremap <C-C> "+Y
:onoremap <C-C> <Esc>
:vnoremap <C-C> "+y
:inoremap <C-C> <C-O>"+Y

" Ctrl-V is paste
:noremap <C-V> "+gp
 
" Use Ctrl-F9 for original Ctrl-C command
:noremap <C-F9> <C-C>
:inoremap <C-F9> <C-C>

" Mappings 
map <leader><leader> :tabn<CR>
map <S><leader><leader> :tabp<CR>
map <leader>/ :noh<CR>
map <F12> <c-w>=<CR>

nnoremap <Down> gj
nnoremap <Up> gk

" autocmds
"
autocmd BufNewFile,BufRead *.conf, set ft=apache
autocmd BufNewFile,BufRead makefile, call Tabstyle_makefile()
autocmd BufNewFile,BufRead Makefile, call Tabstyle_makefile()

" Plugin Mappings
"
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*\\node_modules\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_plugin_ngdoc = 1
let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

map <C-n> :NERDTreeToggle<CR>


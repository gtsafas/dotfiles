if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Try to keep cursor always in middle
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END

" Auto indent
syntax on
filetype indent plugin on


" Indentation
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.

set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2  " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set number "Show line numbers
set noerrorbells " Disable annoying error sound

set splitbelow "Buffers
set splitright "Buffers
set listchars=tab:•\ ,eol:¬,trail:~ 

set laststatus=2 "Always display the status

set hlsearch " Highlight search
set incsearch
set ignorecase
set smartcase

" Line Wrapping
set nowrap
set textwidth=79
set formatoptions=qrn1
set linebreak  " Wrap at wo

" Mappings
map <leader><leader> :tabn<CR>
map <S-Leader><S-Leader> :tabp<CR> "Supposed to tab backwards, but not working we need S-Leader to work
map <leader>/ :noh<CR>
map <F12> <c-w>=<CR> "Autosize all tabs to equal portions


call plug#begin('~/.vim/plugged')


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'

call plug#end()

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:gitgutter_enabled = 1
map <C-n> :NERDTreeToggle<CR>
map <C-o> :FZF<CR>
map <C-b> :Buffers<CR>

" Interface
colorscheme jellyx

" HARDMODE
"
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No left for you!"<CR>
vnoremap <Right> :<C-u>echo "No left for you!"<CR>
inoremap <Right> <C-o>:echo "No left for you!"<CR>

nnoremap <Up> :echo "No left for you!"<CR>
vnoremap <Up> :<C-u>echo "No left for you!"<CR>
inoremap <Up> <C-o>:echo "No left for you!"<CR>

nnoremap <Down> :echo "No left for you!"<CR>
vnoremap <Down> :<C-u>echo "No left for you!"<CR>
inoremap <Down> <C-o>:echo "No left for you!"<CR>


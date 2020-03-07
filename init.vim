call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'chemzqm/vim-jsx-improve'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'Shougo/deoplete.nvim'
Plug 'tomasr/molokai'
Plug 'rakr/vim-one'
Plug 'tpope/vim-surround'
call plug#end()


" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='one'

" Git Gutter
let g:gitgutter_enabled = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrl_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NerdTree
autocmd StdinReadPre * let s:std_in=1

"vim-javascript
let g:javascript_plugin_jsdoc = 1

"deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"auto-pairs
let g:AutoPairsFlyMode = 0

" Bindings
imap <S-Insert> <C-R>*
map <leader><leader> :tabn<CR>
map <S-Leader><S-Leader> :tabp<CR>
map <leader>/ :noh<CR>
map <F12> <c-w>=<CR> "Autosize all splits equal
map <C-n> :NERDTreeToggle<CR>
map <C-b> :buffers<CR>

autocmd BufEnter * silent! lcd %:p:h " Swap to current dir

" Editor Settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set number
set noerrorbells
set splitbelow
set splitright
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
set laststatus=2
set hlsearch
set incsearch
set ignorecase
set smartcase
set nowrap
set textwidth=79
set formatoptions=qrnl
set linebreak
set background=dark
set cursorline
set clipboard=unnamedplus
set mouse=n
colorscheme one

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
	set termguicolors
endif


"""""""""""""""
" Contents    "
" ----------- "
" 1. General  "
" 2. Theme    "
" 3. Plugins  "
"""""""""""""""

""
" 1. General
""
syntax enable
syntax on

set encoding=utf-8 " set charset encoding
set number "show line numbers
set showcmd " show incomplete cmds down the bottom
set showmode " show current mode down the bottom
set autoread " reload files changed outside Vim
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces visually
set nowrap " don't wrap lines
set linebreak " wrap lines at convenient points
set equalalways " split windows equally
set splitbelow " open horizontal split below the current one
set cul " highlight the cursor line
set shell=/bin/bash " load shell

" Main key
let mapleader=","

" Search
set hlsearch  " Highlight search matches
set incsearch " Search as you type
set smartcase " Use smartcase, when search query starts with Uppercase, turn off case insensitive search

" Clipboard

set clipboard+=unnamedplus

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Indentation
set autoindent
set smartindent
set shiftround    " Round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
set shiftwidth=2  " Auto-indent amount when using >> <<
set softtabstop=2 " When hitting tab or backspace, how many spaces should a tab be (see expandtab)

" Tabulation
set smarttab
set tabstop=2
set expandtab " No real tabs!
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-n>'

" Tabs
map <C-t> :tabnew<CR>
map <C-M-n> :tabedit %<CR>
noremap <leader>1 :tabn 1<CR>
noremap <leader>2 :tabn 2<CR>
noremap <leader>3 :tabn 3<CR>
noremap <leader>4 :tabn 4<CR>
noremap <leader>5 :tabn 5<CR>
noremap <leader>6 :tabn 6<CR>
noremap <leader>7 :tabn 7<CR>
noremap <leader>8 :tabn 8<CR>
noremap <leader>9 :tabn 9<CR>

" Scrolling
set scrolloff=8 " Start scrolling when it's 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Viewport switching
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Status bar
set laststatus=2
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&fileformat}] " file format
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=\ %{fugitive#statusline()}
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" Tmux
let g:tmux_navigator_no_mappings = 1 " Tmux navigation keybinding
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" Splits

" Open vertical  split and switch to it
nnoremap <leader>v <C-w>v<C-w>l
" Open horizontal  split and switch to it
nnoremap <leader>h :split<CR>

" Other

" Autoread files when changing buffers while inside Vim
au FocusGained,BufEnter * :checktime

" Save like a pro (CTRL+s)
nnoremap <c-s> :w<cr>

" Quit like a pro
nnoremap <C-M-q> :Kwbd<CR>
nnoremap <leader>q :q<CR>

" Upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" Upper/lower first char of word
nmap <leader>wu mQgewvU`Q
nmap <leader>wl mQgewvu`Q

" This key combination gets rid of the search highlights
nmap <leader><space> :noh<cr>

" Enable upercase letter commands
cab Q! q!
cab Q q
cab W! w!
cab W w

""
" 2. Theme
""
colorscheme OceanicNext

let g:airline_theme='oceanicnext'
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Or if you have Neovim >= 0.1.5
if (has('termguicolors'))
 set termguicolors
endif

""
" 3. Plugins
""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'mhartington/oceanic-next'           " Color scheme
Plug 'ctrlpvim/ctrlp.vim'                 " Fuzzy finder
Plug 'SirVer/ultisnips'                   " Fast snippet solution for Vim (requires Python)
Plug 'honza/vim-snippets'                 " Snippets for various programming languages
Plug 'brooth/far.vim'                     " Find and replace text through multiple files
Plug 'bling/vim-airline'                  " Bottom status bar + tabs
Plug 'nathanaelkane/vim-indent-guides'    " Visually displays indent levels in code
Plug 'rking/ag.vim'                       " Search for a pattern through multiple files (requires the_silver_searcher)
Plug 'scrooloose/nerdtree'                " File tree explored
Plug 'sjl/gundo.vim'                      " Keep tracking of all undos
Plug 'scrooloose/syntastic'               " Syntax analyzer
Plug 'airblade/vim-gitgutter'             " Mark lines that have been changed according to Git
Plug 'tpope/vim-fugitive'                 " Vim + Git
Plug 'tpope/vim-rhubarb'                  " Vim + GitHub
Plug 'tpope/vim-surround'                 " Edit what's surrounding a snippet of code
Plug 'tomtom/tcomment_vim'                " Comment code lika a boss
Plug 'tpope/vim-endwise'                  " Close 'if', 'def' etc
Plug 'christoomey/vim-tmux-navigator'     " Allows to consistenly navigates between Vim and Tmux split
Plug 'elixir-lang/vim-elixir'             " Syntax highlighting for Elixir
Plug 'rhysd/vim-crystal'                  " Syntax highlighting for Crystal
Plug 'jparise/vim-graphql'                " Syntax highlighting for GraphQL
Plug 'tmux-plugins/vim-tmux-focus-events' " Used for automatically refreshing code in the editor
Plug 'roxma/nvim-yarp'                    " Python framework ease writing Vim plugins
Plug 'ncm2/ncm2'                          " Async completion framework for Neovim
Plug 'ncm2/ncm2-bufword'                  " Completion – Words from current buffer
Plug 'ncm2/ncm2-path'                     " Completion – Path
Plug 'pbogut/ncm2-alchemist'              " Completion – Elixir
Plug 'ncm2/ncm2-jedi'                     " Completion – Python
call plug#end()

" File tree (nerdtree)
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1
map <C-n> :NERDTreeToggle<CR>

" vim-airline
let g:airline#extensions#tabline#enabled=1

" Changes control (gundo.vim)
nnoremap <F5> :GundoToggle<CR>


" Comments (tcomment_vim)
map <C-c> :TComment<CR>

" Search (ag.vim)
nnoremap <leader>a :Ag 

" Completion (NCM2)

" Enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" Suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c

" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>

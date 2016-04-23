" required
set nocompatible

syntax enable
filetype off
filetype indent plugin on

" enable text highlighting for markdown files
au BufNewFile,BufRead *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufNewFile,BufRead *.{ex,exs,eex} set filetype=elixir

" enable text highlighting for slim files
autocmd BufNewFile,BufRead *.slim set filetype=slim

" defaults
colorscheme hybrid " set colorscheme
set encoding=utf-8 " set charset encoding
set number "show line numbers
set history=1000 " store lots of :cmdline history
set showcmd " show incomplete cmds down the bottom
set showmode " show current mode down the bottom
set gcr=a:blinkon0 " disable cursor blink
set visualbell " the sound of silence
set autoread " reload files changed outside Vim
set hidden " hide buffers instead of closing them so that you can have unwritten changes to a file and open a new one
set list listchars=tab:\ \ ,trail:· " display tabs and trailing spaces visually
set nowrap " don't wrap lines
set linebreak " wrap lines at convenient points
set equalalways " split windows equally
set splitbelow " open horizontal split below the current one
set splitright " open vertical split at the right of the current one
set wildignore=*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png " there files will be ignored when completing in wild menu
set clipboard+=unnamed,unnamedplus,autoselect " share clipboard
set ttyfast " I  got a fast terminal!
set ttimeoutlen=50  " make Esc work faster
set lazyredraw " get faster, redraw only when it's needed
set shiftround " round the indent to shiftwidth (when at 3 spaces, and I hit > go to 4, not 5)
set shiftwidth=2 " auto-indent amount when using >> <<
set softtabstop=2 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
set cul " highlight the cursor line
set shell=/bin/sh " load shell

let loaded_matchparen=1 " match paranthesis

" GUI-only defaults
if has('gui_running')
  set guifont=Monaco:h12
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=l
  set guioptions-=h
  set guioptions-=b
  set guioptions-=R
  set guioptions-=L
  set showtabline=2   " show tabs in gvim, not vim
  set guitablabel=%t  " show simple filname as tabname
endif

" main key
let mapleader=","

" search
set hlsearch   " highlight search matches
set incsearch " search as you type
set smartcase " use smartcase, when search query starts with Uppercase, turn off case insensitive search

" NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=1

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" scrolling
set scrolloff=8 " start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" tabs
set expandtab " no real tabs!
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = '<c-n>'

" vim-diminactive
let g:diminactive_use_colorcolumn = 1

" enable vim-airline
let g:airline#extensions#tabline#enabled = 1

" Tmux navigation keybinding
let g:tmux_navigator_no_mappings = 1

" Use the test strategy that fits you better: https://github.com/janko-m/vim-test#strategies
let test#strategy = 'basic'

" status
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

" start Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" core plugins
Plugin 'gmarik/Vundle.vim' " Vundle itself
Plugin 'bling/vim-airline' " bottom status bar + tabs
Plugin 'edkolev/tmuxline.vim' " allows Vim to share its status bar with Tmux
Plugin 'tpope/vim-dispatch' " asynchronous build and test dispatcher

" color schemes and code highlighting
Plugin 'flazz/vim-colorschemes' " choose the coolest colorscheme
Plugin 'vim-ruby/vim-ruby' " Ruby code highlighting
Plugin 'elixir-lang/vim-elixir' " Elixir code highlighting
Plugin 'jelera/vim-javascript-syntax' " JavaScript code highlighting
Plugin 'toyamarinyon/vim-swift' " Swift code highlighting
Plugin 'kchmck/vim-coffee-script' " CoffeeScript code highlighting
Plugin 'skammer/vim-css-color' " CSS code highlighting
Plugin 'cakebaker/scss-syntax.vim' " SCSS code highlighting
Plugin 'slim-template/vim-slim' " Slim code highlighting
Plugin 'blueyed/vim-diminactive' " dim inactive windows
Plugin 'nathanaelkane/vim-indent-guides'

" file navigation/search
Plugin 'https://github.com/kien/ctrlp.vim' " awesome fuzzy finder
Plugin 'jlanzarotta/bufexplorer' " search for files that have been changed
Plugin 'rking/ag.vim' " search for a pattern through the directories (need to install the_silver_searcher)
Plugin 'scrooloose/nerdtree' " file system tree
Plugin 'vim-scripts/SearchComplete' " autocomplete for '/' searches
Plugin 'majutsushi/tagbar' " Vim plugin that displays tags in a window, ordered by scope

" utils
Plugin 'janko-m/vim-test' " wrapper for running tests on different granularities
Plugin 'sjl/gundo.vim' " keep tracking of all undos
Plugin 'scrooloose/syntastic' " syntax analyzer
Plugin 'airblade/vim-gitgutter' " mark lines that have been changed according to Git
Plugin 'tpope/vim-fugitive' " Vim + Git
Plugin 'tpope/vim-surround' " edit what's surrounding a snippet of code
Plugin 'tpope/vim-abolish' " find/replace on steroids
Plugin 'Valloric/YouCompleteMe' " autocomplete (needs to install and configure cmake)
Plugin 'tomtom/tcomment_vim' " comment code
Plugin 'tpope/vim-endwise' " close 'if', 'def' etc
Plugin 'christoomey/vim-tmux-navigator' " allows to consistenly navigates between Vim and Tmux split
Plugin 'thoughtbot/vim-rspec' " lightweight RSpec runner

" end Vundle
call vundle#end()

filetype on

""
" key mapping & stuff
""

" ease life enabling the use of some upercase letter commands
cab Q! q!
cab Q q
cab W! w!
cab W w

" Gundo
nnoremap <F5> :GundoToggle<CR>

" bufexplorer
nnoremap <F6> :BufExplorerHorizontalSplit<CR>

" tComment
map <C-c> :TComment<CR>

" rspec.vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" CtrlP
nnoremap <leader>. :CtrlPTag<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip " ignore file (OSX/Linux)
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$'
      \ }

" CTags
nnoremap <silent> <Leader>b :TagbarToggle<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" convenient viewport switching
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let g:rspec_runner = 'os_x_iterm'

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

" open vertical  split and switch to it
nnoremap <leader>v <C-w>v<C-w>l

" open horizontal  split and switch to it
nnoremap <leader>h :split<CR>

" Save like a pro (CTRL+s)
nnoremap <c-s> :w<cr>

" Quit like a pro
nnoremap <C-M-q> :Kwbd<CR>
nnoremap <leader>q :q<CR>

" run tests (vim-test)
nmap <silent> <leader>T :TestFile<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>wu mQgewvU`Q
nmap <leader>wl mQgewvu`Q

" this key combination gets rid of the search highlights
nmap <leader><space> :noh<cr>

" start ag search
nnoremap <leader>a :Ag 

" tabs - moving around, (CTRL+t to new tab)
map <C-t> :tabnew<CR>
map <C-M-n> :tabedit %<CR>
" map <C-l> :tabnext<cr>
" map <C-h> :tabprevious<cr>

if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
endif


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/

" Colorscheme
colorscheme desert

" Show whitespace
set list

" Encoding
set encoding=utf8
set fileencoding=utf8

" File format
set fileformat=unix

" Useful settings
set history=700
set undolevels=700

" Showing line numbers and length
set number    " show line numbers
set tw=119    " width of document (used by gd)
set nowrap    " don't automatically wrap on load
set fo-=t     " don't automatically wrap text when typing
set colorcolumn=120
highlight ColorColumn ctermbg=233

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Real programmers don't use TABs but spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Disable stupid backup and swap files - they trigger too many events for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Show matching the bracket when cursor is over a bracket
set showmatch

" Remove annoying sound on erros
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Rebind <Leader> key
" I like to have it here because it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-f>`` stands for ``CTRL+f``
noremap <C-f> :nohl<CR>
vnoremap <C-f> :nohl<CR>
inoremap <C-f> :nohl<CR>

" Quicksave command
noremap <C-s> :update<CR>
vnoremap <C-s> <C-C>:update<CR>
inoremap <C-s> <C-O>:update<CR>

" Quick quit command
"" Quit current window ``<,e>``
noremap <Leader>e :quit<CR>
"" Quit all windows ``<,E>``
noremap <Leader>E :qa!<CR>

" Quick delete current buffer ``<,b>``
noremap <Leader>b :bd<CR>

" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
" better indentation
vnoremap < <gv
vnoremap > >gv


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen for loading automatically installed plugins
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on


" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatic load
autocmd vimenter * NERDTree

" Shortcut
map <C-n> :NERDTreeToggle<CR>

" Close vim if the only window left open is a NERDTree 
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python IDE
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set key 'R' for run python code
let g:pymode_run_key = 'R'

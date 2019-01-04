" Variables {{{
let mapleader = ","
" }}}
" Basic Setting {{{
set nocompatible
set encoding=utf-8
set nonumber
set backspace=indent,eol,start
set nostartofline
set autoread
set scrolloff=3
set wildmenu wildignorecase wildmode=list:longest,full
set ignorecase smartcase
"set shortmess+=I
set hidden
set history=1000
set complete-=i completeopt=menu
set foldenable foldmethod=syntax foldlevelstart=99
set ttimeoutlen=50
set mouse=a
set breakindent
set nu
set ts=4
set hlsearch
set nobackup
set noswapfile
set ruler
set bg=dark
set t_Co=256
set splitright
set splitbelow
set autoindent
set expandtab smarttab
set tabstop=4 softtabstop=4 shiftwidth=4
set foldmethod=marker   
set foldnestmax=10
set foldenable
set foldlevel=0
set so=10 " scroll off
filetype plugin indent on
syntax on

"Speed up Syntax Highlighting
set nocursorcolumn
set nocursorline
"set lazyredraw "It makes no effect(or more slow?!) from personal experience
set ttyfast
set norelativenumber
set synmaxcol=400 "set enough(but not too long) column length.
syn sync minlines=50 maxlines=50

color jellybeans
" }}}

" Mapping {{{
" Movement {{{

" Split Window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal 
if has('nvim')
    :tnoremap <A-h> <C-\><C-n><C-w>h
    :tnoremap <A-j> <C-\><C-n><C-w>j
    :tnoremap <A-k> <C-\><C-n><C-w>k
    :tnoremap <A-l> <C-\><C-n><C-w>l
endif
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
" }}}
" Cursor {{{
	nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
	nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
	nnoremap gj j
	nnoremap gk k
" }}}
"}}}
" Plugin Manger {{{
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"
" information of class, function and variable
Plug 'tpope/vim-fugitive'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Vim prettier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'Konfekt/FastFold'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Cursor
Plug 'terryma/vim-multiple-cursors'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar'
Plug '/usr/local/opt/fzf'
Plug 'chun-yang/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-scripts/mru.vim'
call plug#end()
" }}}
"Plugin Settings {{{
" - vim-easy-align {{{
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
" }}}
" - vim-airline {{{
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
" }}}
" - multi_cursor {{{
" let g:multi_cursor_use_default_mapping=0
" 
"  Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" }}}
" - github-dashboard.git {{{
 let g:multi_cursor_quit_key            = '<Esc>'

let g:github_dashboard = { 'username': 'limjiyoon', 'password': 'secret' }
" dashboard window position
" - options: tab, top, bottom, above, below, left, right
" - Default: tab
let g:github_dashboard['position'] = 'bottom'

" Disable Emoji output
" - Default: only enable on terminal Vim on Mac
let g:github_dashboard['emoji'] = 0

" Customize emoji (see http://www.emoji-cheat-sheet.com/)
" let g:github_dashboard['emoji_map'] = {
" \   'user_dashboard': 'blush',
" \   'user_activity':  'smile',
" \   'repo_activity':  'laughing',
" \   'ForkEvent':      'fork_and_knife'
" \ }

" Command to open link URLs
" - Default: auto-detect
let g:github_dashboard['open_command'] = 'open'
" }}}
" - nerdTree {{{
map <Leader>nt <ESC>:NERDTreeToggle<CR>
" }}}
" - Tagbar {{{
map <Leader>tb <ESC>:TagbarToggle<CR>
" }}}
" - RipGrep integration {{{
"http://www.wezm.net/technical/2016/09/ripgrep-with-vim/
if executable("rg")
  let g:ackprg = 'rg --vimgrep --no-heading -i'
endif
" }}}
" - MRU {{{
let MRU_FILE = '~/.vim/.mru_files_db'
let MRU_Max_Entries = 10
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Window_Height = 10
" }}}
" }}}

" Remap leader to comma
let mapleader = ","

" Load all my plugins
execute pathogen#infect()

" Wrap paragraphs
vmap Q gq
nmap Q gqap

" Basic editing
set hidden
set vb
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set number
set spell spelllang=en_us
set wrap
set linebreak
set nolist  " list disables linebreak
set wrapmargin=2
set textwidth=80
set formatoptions+=l
set history=1000
retab 4
set colorcolumn=+1
filetype plugin indent on
set cursorline

" Get rid of vertical separators for vsplit
set fillchars+=vert:\ 

" Toggle zoom in/out
"let g:smallfont = 'DejaVu\ Sans\ Mono\ 11'
"let g:bigfont = 'DejaVu\ Sans\ Mono\ 14'
let g:smallfont = 'Source\ Code\ Pro\ 11'
let g:bigfont = 'Source\ Code\ Pro\ 14'
let g:fontzoomed = 0
execute "set guifont=".g:smallfont
nnoremap <Leader>z :call ToggleFontZoom()<CR>
function! ToggleFontZoom()
    if g:fontzoomed
        execute "set guifont=".g:smallfont
        let g:fontzoomed = 0
    else
        execute "set guifont=".g:bigfont
        let g:fontzoomed = 1
    endif
endfunction

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
au BufNewFile,BufRead *.sg set filetype=python
au BufNewFile,BufRead *.sage set filetype=python

" Highlight search terms...
set hlsearch

" When the cursor moves outside the viewport of the current window, the buffer
" scrolls a single line to keep the cursor in view. Setting the option below
" will start the scrolling three lines before the border, keeping more context
" around where you're working.
set scrolloff=3

" Case non sensitive search
set ignorecase
set smartcase

" Remove all visual extras
set guioptions-=m " turn off menu bar
set guioptions-=T " turn off toolbar
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=R  "remove right-hand scroll bar
set guioptions-=l  "remove left-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Use the desktop clipboard
set clipboard=unnamedplus

" Better block indentation
vnoremap < <gv
vnoremap > >gv

" Highlight double white spaces
" MUST be inserted before the colorscheme
"autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

" Colorscheme
set background=dark
colorscheme lluis

" Fullscreen toggle
map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>

" Show trailing whitespace:
match ErrorMsg '\s\+$'

" CtrlP
nnoremap <Leader>t :CtrlPBufTag<CR>
nnoremap <Leader>h :CtrlPTag<CR>
nnoremap <Leader>a :CtrlP<CR>
nnoremap <Leader>s :CtrlPBuffer<CR>

" redraws the screen and removes any search highlighting.
nnoremap <silent> <Leader>c :nohl<CR>

" toggle tag bar
nnoremap <Leader>r :TagbarToggle<CR>

" Improve up/down movement on wrapped lines
" remapping common-keys movement wrap
"nnoremap j gj
"nnoremap k gk

" Easy split navigation remapping splits
"nnoremap <C-y> <C-w>h
"nnoremap <C-n> <C-w>j
"nnoremap <C-e> <C-w>k
"nnoremap <C-o> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
            
" Navigation for Workman layout
map <A-y> h
map <A-n> j
map <A-e> k
map <A-o> l

set nocompatible
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype on
filetype plugin on
filetype plugin indent on

set backspace=indent,eol,start


" This must happen before the syntax system is enabled
"aunmenu Help.
"aunmenu Window.
"let no_buffers_menu=1
"set mousemodel=popup

set foldmethod=indent
set foldlevel=99

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround

set encoding=utf-8
set fileencoding=utf-8
set scrolloff=5
set autoindent
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
" don't bell or blink
set noerrorbells
set vb t_vb=
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
if has('gui_running')
    set relativenumber
    set undofile
endif

" Status line
set laststatus=2
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff}/%Y)
set statusline+=%{fugitive#statusline()}
"set showcmd
" set number
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Backups
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
set backup                        " enable backups

" Make Y not dumb
nnoremap Y y$

:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" colors
syntax on
set background=dark
colorscheme solarized

" The PC is fast enough, do syntax highlight syncing from start
autocmd BufEnter * :syntax sync fromstart

" Remember cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Enable hidden buffers
" set hidden

" enable automatic title setting for terminals
set title
set titleold="Terminal"
set titlestring=%F\ -\ Vim

" sets leader to ',' and localleader to "\"
let mapleader=","
let maplocalleader="\\"

" customize the wildmenu
set wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class,*.swp,*.zip,*.gz,*.bz2,*.so,*/tmp/*
set wildmode=list:longest



nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
if v:version >= 703
    set colorcolumn=85
endif

"set list
"set listchars=tab:▸\ 

" NERD Tree
map <Leader>n :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']


"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap ; :

" au FocusLost * :wa

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>q gqip
nnoremap <leader>v V`]
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>


inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" hide some files and remove stupid help
let g:netrw_list_hide='^\.,.\(pyc\|pyo\|o\)$'
map <leader>b :Explore!<CR>


" highlight trailing whitwspace
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/


" Ack
map <leader>a <Esc>:Ack!

" Google's JSLint
au BufNewFile,BufRead *.js set makeprg=gjslint\ %
au BufNewFile,BufRead *.js set errorformat=%-P-----\ FILE\ \ :\ \ %f\ -----,Line\ %l\\,\ E:%n:\ %m,%-Q,%-GFound\ %s,%-GSome\ %s,%-Gfixjsstyle%s,%-Gscript\ can\ %s,%-G

" TESTING GOAT APPROVES OF THESE LINES
au BufNewFile,BufRead test_*.py set makeprg=nosetests\ --machine-out\ --nocapture
au BufNewFile,BufRead test_*.py set shellpipe=2>&1\ >/dev/null\ \|\ tee
au BufNewFile,BufRead test_*.py set errorformat=%f:%l:\ %m
au BufNewFile,BufRead test_*.py nmap <silent> <Leader>n <Plug>MakeGreen
au BufNewFile,BufRead test_*.py nmap <Leader>N :make<cr>
nmap <silent> <leader>ff :QFix<cr>
nmap <leader>fn :cn<cr>
nmap <leader>fp :cp<cr>

" Diff
nmap <leader>d :!hg diff %<cr>

" Rainbows!
nmap <leader>R :RainbowParenthesesToggle<CR>

" GUI Tab settings
function! GuiTabLabel()
  let label = ''
  let buflist = tabpagebuflist(v:lnum)
  if exists('t:title')
    let label .= t:title . ' '
  endif
  let label .= '[' . bufname(buflist[tabpagewinnr(v:lnum) - 1]) . ']'
  for bufnr in buflist
    if getbufvar(bufnr, '&modified')
      let label .= '+'
      break
    endif
  endfor
  return label
endfunction
set guitablabel=%{GuiTabLabel()}


if has('gui_running')
    set guifont=Menlo:h14
    colorscheme solarized
    set background=light

    set go-=T
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    let g:sparkupExecuteMapping = '<D-e>'

    highlight SpellBad term=underline gui=undercurl guisp=Orange
endif

" Disable the colorcolumn when switching modes.  Make sure this is the
" first autocmd for the filetype here
if v:version >= 703
  autocmd FileType * setlocal colorcolumn=0
endif

" python support
" --------------
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 colorcolumn=80
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType python set omnifunc=pythoncomplete#Complete

let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" php support
" -----------
autocmd FileType php setlocal shiftwidth=8 tabstop=8 softtabstop=8

" template language support (SGML / XML too)
" ------------------------------------------
" and disable that stupid html rendering (like making stuff bold etc)


autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd BufNewFile,BufRead *.rhtml setlocal ft=eruby
autocmd BufNewFile,BufRead *.mako setlocal ft=mako
autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
autocmd BufNewFile,BufRead *.html,*.htm setlocal ft=htmldjango
" let html_no_rendering=1

"let g:closetag_default_xml=1
"autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source ~/.vim/scripts/closetag.vim

" CSS
" ---
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Java
" ----
autocmd FileType java setlocal shiftwidth=2 tabstop=8 softtabstop=2 expandtab

" rst
" ---
autocmd BufNewFile,BufRead *.txt setlocal ft=rst
autocmd FileType rst setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
\ formatoptions+=nqt textwidth=74

" C#
autocmd FileType cs setlocal tabstop=4 softtabstop=4 shiftwidth=4

" C/C++
autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab colorcolumn=79
autocmd FileType cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab colorcolumn=79

" vim
" ---
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2

" Javascript
" ----------
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 colorcolumn=79
let javascript_enable_domhtmlcss=1


" CoffeeScript
" ------------
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 colorcolumn=79


" D
" -
autocmd FileType d setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4

" vimux
" Run the current file with rspec
map <Leader>rb :call RunVimTmuxCommand("clear; rspec " . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>rp :PromptVimTmuxCommand<CR>

" Run last command executed by RunVimTmuxCommand
map <Leader>rl :RunLastVimTmuxCommand<CR>

" Inspect runner pane
map <Leader>ri :InspectVimTmuxRunner<CR>

" Close all other tmux panes in current window
map <Leader>rx :CloseVimTmuxPanes<CR>

" Interrupt any command running in the runner pane
map <Leader>rs :InterruptVimTmuxRunner<CR>

" Prompt for a command to run
map <LocalLeader>vp :PromptVimTmuxCommand<CR>

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <LocalLeader>vs "vy :call RunVimTmuxCommand(@v)<CR>

" Select current paragraph and send it to tmux
nmap <LocalLeader>vs vip<LocalLeader>vs<CR>

" tcomment
map <Leader>c <c-_><c-_>

" task list
map <Leader>td <Plug>TaskList

" Revision history
map <Leader>g :GundoToggle<CR>

" pyflakes
let g:pyflakes_use_quickfix = 0

" Pep8
let g:pep8_map='<Leader>8'

" Supertab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Rope
map <Leader>j :RopeGotoDefinition<CR>
map <Leader>r :RopeRename<CR>

" py.test
" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

" Add the virtualenv's site-packages to vim path
if has('py')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif
set background=light
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = {
  \ 'types': {
      \ 1: ['.git', 'cd %s && git ls-files'],
      \ 2: ['.hg', 'hg --cwd %s locate -If .'],
      \ },
  \ 'fallback': 'find %s -type f'
\ }

autocmd QuickFixCmdPost *grep* cwindow

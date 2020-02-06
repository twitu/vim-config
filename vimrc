" Add pathogen for package management
execute pathogen#infect()

" set colorscheme to codedark similar to vscode
colorscheme codedark

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set tabstop=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show partial command line at last line
set showcmd

" highlight line cursor is on
set cursorline

" shows matching parenthesis
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" shows trailing whitespace in red color
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

" seamless navigation between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" use ctags for understanding source code
set tags=tags

" visual select and replace
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" start searching on character press
set incsearch

" Default splits below and right
set splitbelow
set splitright

" Swap comma separated item with the one on the right
nnoremap <silent> gl "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o>/\w\+\_W\+<CR><c-l>"

" Swap comma separated item with the one on the left
nnoremap <silent> gh "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR><c-o><c-l>"

" Move through virtual lines
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Unbind some useless/annoying default key bindings.
" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

set lazyredraw


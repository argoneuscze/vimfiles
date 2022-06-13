" filetype support, indenting support
filetype plugin indent on

" syntax highlighting, omni-completion
syntax on

" `matchit.vim` is bundled with vim by default
" provides smarter bracket pair matching with % (if/endif etc.)
runtime macros/matchit.vim

" automatic indenting for any filetype
set autoindent

" replace tabs with spaces
set expandtab

" set tab width
set tabstop=4
set shiftwidth=4

" intuitive backspace behaviour
set backspace=indent,eol,start

" allows hidden unsaved buffers, useful when `:e`-ing other files
set hidden

" incremental search with /
set incsearch

" shows line numbers
set number

" shows current line number at the bottom right
set ruler

" command-line completion, use <Tab> and <CR> as usual
set wildmenu

" font
if has('gui_running')
  set guifont=Roboto\ Mono:h10
endif

" sonokai theme
silent! packadd sonokai

if has('termguicolors')
  set termguicolors
endif

let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1

silent! colorscheme sonokai

" airline customization
let g:airline#extensions#tabline#enabled = 1

" bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

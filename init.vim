" For vim plug
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdTree'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'vim/killersheep'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chrisbra/Recover.vim'
Plug 'vimwiki/vimwiki', {'branch' : 'dev'}
call plug#end()

" My preferences
set number
set autoread
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set list
set listchars=tab:>-

" For vimwiki
set nocompatible
filetype plugin on
syntax on

inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" map <Leader> <Plug>(easymotion-prefix)
nmap <C-n> :NERDTreeToggle<CR>
inoremap <c-d> <esc>ddi
inoremap <c-u> <esc>ui
inoremap jk <esc>
inoremap <Up> <nop>
inoremap <Left> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>tv :tab new ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>
nnoremap L $
nnoremap H ^
nnoremap <leader><space> :execute "nohlsearch"<cr>
nnoremap <leader>W :match<cr>

" some typos
iabbrev adn and
iabbrev itn int
iabbrev flaot float
iabbrev calss class
iabbrev shreaynsh shreyansh
iabbrev peice piece
iabbrev freind friend

" some abbreviations
iabbrev ssig <cr>Shreyansh Chouhan<cr>chouhan.shreyansh2702@gmail.com

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

augroup mygroup
  autocmd!
  autocmd FileType c,cpp iabbrev <buffer> iff if () {<cr>}jkkf(a
  " autocmd for removing trailing whitespaces
  autocmd FileType c,cpp autocmd BufWritePre <buffer> :%s/\s\+$//e
  " autocmd for comments
  autocmd FileType c,cpp nnoremap <buffer> <leader>c I//<esc>
  autocmd FileType vim nnoremap <buffer> <leader>c I"<space><esc>
  " don't like seeing numbers in a markdown file
  autocmd FileType markdown,vimwiki setlocal nonumber
  autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

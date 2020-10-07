" For vim plug
call plug#begin('~/.config/nvim/plugged')
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'
Plug 'lifepillar/vim-mucomplete'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'norcalli/typeracer.nvim'
Plug '~/Work/nvim-scratchpad'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround',
Plug 'vim-conf-live/pres.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'LnL7/vim-nix'
Plug 'cplaursen/vim-isabelle'
Plug 'jpalardy/vim-slime'
call plug#end()

" My preferences
set number
set relativenumber
set autoread
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set list
set listchars=tab:>-

nmap <leader>gg :Grepper<CR>
inoremap jk <esc>
noremap <Up> <nop>
noremap <Left> <nop>
noremap <Down> <nop>
noremap <Right> <nop>
inoremap <esc> <nop>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>tv :tab new ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader><space> :silent execute "nohlsearch"<cr>
nnoremap ts :%s/\s\+$//e<cr>
nnoremap <leader>sn :vsplit ~/Documents/todo.md<cr>

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

" colorscheme
colorscheme dracula

" mucomplete
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
let g:mucomplete#enable_auto_at_startup = 1

" startify bookmarks
let g:startify_bookmarks = [ {'n': '~/GSOC/neovim'} ]

" lightline
let g:lightline = {
  \ 'colorscheme' : 'dracula'
  \ }
set noshowmode

" folds
set foldmethod=indent
set foldnestmax=10
set foldminlines=4

if !(&filetype == "txt")
  highlight WhiteSpaces ctermbg=green guibg=#55aa55
  match WhiteSpaces /\s\+$/
endif

let g:slime_target = "tmux"

augroup mygroup
  autocmd!
  autocmd FileType c,cpp iabbrev <buffer> iff if () {<cr>}jkkf(a
  " autocmd for removing trailing whitespaces
  autocmd FileType c,cpp autocmd BufWritePre <buffer> :%s/\s\+$//e
  " autocmd for comments
  autocmd FileType c,cpp nnoremap <buffer> <leader>c I//<esc>
  autocmd FileType vim nnoremap <buffer> <leader>c I"<space><esc>
  " don't like seeing numbers in a markdown file
  autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

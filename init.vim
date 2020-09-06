" For vim plug
call plug#begin('~/.config/nvim/plugged')
Plug 'chrisbra/Recover.vim'
Plug 'vimwiki/vimwiki', {'branch' : 'dev'}
Plug 'mhinz/vim-grepper'
Plug 'mhinz/vim-startify'
Plug 'lifepillar/vim-mucomplete'
Plug 'tpope/vim-unimpaired'
Plug 'itchyny/lightline.vim'
Plug 'norcalli/typeracer.nvim'
Plug '~/Work/nvim-scratchpad'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'CraneStation/cranelift.vim', {'branch' : 'main'}
Plug 'tpope/vim-surround',
Plug 'vim-conf-live/pres.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
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

" hardtime
let g:hardtime_default_on = 1
let g:list_of_normal_keys = ["h", "j", "k", "l"]
let g:list_of_visual_keys = ["h", "j", "k", "l"]
let g:hadtime_maxcount = 3

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

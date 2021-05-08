" For vim plug
call plug#begin('~/.config/nvim/plugged')
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'LnL7/vim-nix'
Plug 'andreasvc/vim-256noir'
Plug 'hkupty/iron.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tonadev/vim-airline-256noir'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Colorscheme
colorscheme 256_noir

" My preferences
set number
set relativenumber
set autoread
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set list
set listchars=tab:>-
set fcnotify=autoread,watcher
set foldcolumn=auto
set noshowmode
set cc=81

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
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>gg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <C-i> :tabp<cr>

highlight Overlength ctermbg=red guibg=#55aa55
match Overlength /\%>80v.\+/

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

" mucomplete
set completeopt+=menuone
set completeopt+=noselect
set shortmess+=c   " Shut off completion messages
let g:mucomplete#enable_auto_at_startup = 1

" startify bookmarks
let g:startify_bookmarks = [ {'n': '~/GSOC/neovim'} ]

" airline
let g:airline_theme='256noir'

" folds
set foldmethod=indent
set foldnestmax=10
set foldminlines=4

if !(&filetype == "txt")
  highlight WhiteSpaces ctermbg=green guibg=#55aa55
  match WhiteSpaces /\s\+$/
endif

augroup mygroup
  " autocmd for removing trailing whitespaces
  autocmd FileType c,cpp autocmd BufWritePre <buffer> :%s/\s\+$//e
  " autocmd for comments
  autocmd FileType c,cpp nnoremap <buffer> <leader>c I//<esc>
  autocmd FileType vim nnoremap <buffer> <leader>c I"<space><esc>
  " don't like seeing numbers in a markdown file
  autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

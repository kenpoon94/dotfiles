source ~/.vimplugrc/fzf.vim
source ~/.vimplugrc/coc.vim

execute pathogen#infect()
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'morhetz/gruvbox'
Plug 'dikiaap/minimalist'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'   
Plug 'maxmellon/vim-jsx-pretty' 
Plug 'mbbill/undotree'
Plug 'ap/vim-buftabline'
Plug 'neoclide/coc.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'StanAngeloff/php.vim'
Plug 'marlonfan/coc-phpls'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-eunuch'
call plug#end()

syntax on
filetype plugin indent on

" Primeagen - First VimRC
" https://www.youtube.com/watch?v=n9k9scbTuvQ
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set wrap
set linebreak
set colorcolumn=80
set hidden
set rnu
set autochdir
set background=dark

let mapleader = " "
let loaded_matchparen = 1
let g:rooter_use_lcd = 1
let g:rooter_manual_only = 1
let g:sneak#label = 1
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" vim-indent-guides customize
colorscheme gruvbox
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
let g:indent_guides_enable_on_vim_startup = 1

" vimify spotify key
let g:spotify_token='YWEyYzIzNjExOTIyNDhiYmFkNTBjNmVhMTQ2MjQzNjM6ZmJkZmFiMDUzOWRkNDk2Yzk2YWViYjliMmRlZTM4ZGM='

highlight ColorColumn ctermbg=0 guibg=lightgrey


" ----------------------
" Custom Command
" ----------------------
"
" Setup Prettier [Mandatory]
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Save without formatting prettier
" command! -nargs=0 Nw  :noa w

" ----------------------
" Color Scheme 
" ----------------------
"
    " Gruvbox
    colorscheme gruvbox

    " Minimalist
    " colorscheme minimalist
    " let g:airline_theme = 'minimalist'
    " let g:airline_powerline_fonts = 1
    " let g:airline#extensions#tabline#enabled = 1

" ----------------------
" VIM Navigation 
" ----------------------
"
    " Open .init.vim or .vimrc 
    nnoremap <leader>\ :e ~/.config/nvim/init.vim<CR>

    " Open empty buffer 
    nnoremap <leader>` :enew<CR>

    " Navigate VIM panel
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>l :wincmd l<CR>

    " Open Undotree
    nnoremap <leader>u :UndotreeShow<CR>

    " Next Buffer
    nnoremap <leader>n :bnext<CR>

    " Next Buffer
    nnoremap <leader>b :bprevious<CR>

    " Close Buffer
    nnoremap <leader>d :bd<CR>

" ----------------------
" Document Navigation
" ----------------------
"
    " Line search in current buffer
    nmap <leader>/ <Plug>(easymotion-overwin-f2)

    " Two char search
    nmap / :BLines<CR> 

" ----------------------
" Document Manipulation
" ----------------------
"
    " Format selected text with Prettier
    vmap <leader>f  <Plug>(coc-format-selected)
    
    " Format whole document with Prettier
    nmap <leader>f :Prettier<CR>

    " Highlight and replace
    vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" ----------------------
" Git Fugitive
" ----------------------
"
    "  Git Status
    nmap <leader>gs :G<CR>
    
    " Merge from (right)
    nmap <leader>gj :diffget //3<CR> 
    
    " Merge to (left)
    nmap <leader>gf :diffget //2<CR> 

" ----------------------
" Vimify Spotify  
" ----------------------
"
    nnoremap <Leader>ss :SpToggle<CR>
    nnoremap <Leader>sq :SpSearch<Space>
    nnoremap <Leader>sn :SpNext<CR>
    nnoremap <Leader>sp :SpPrevious<CR>

" ----------------------
" Nerd Tree 
" ----------------------
"
    nnoremap <Leader>p :NERDTreeToggle<CR>
" ----------------------
" Console Log Vim
" ----------------------
" Console log from insert mode; Puts focus inside parentheses
    imap cll console.log();<Esc>==f(a
" Console log from visual mode on next line, puts visual selection inside parentheses
    vmap cll yocll<Esc>pysiw"f"a,<ESC>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
    nmap cll yiwocll<Esc>pysiw"f"a,<ESC>p

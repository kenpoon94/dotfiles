source ~/.vim/plugged-ext/fzf.vim

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'ap/vim-buftabline'
Plug 'dikiaap/minimalist'
Plug 'joshdick/onedark.vim' " theme auto applied
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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

" dikiaap/minimalist
" set t_Co=256
" colorscheme minimalist

let mapleader = " "
let loaded_matchparen = 1
let g:rooter_cd_cmd = 1
let g:sneak#label = 1
let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

" vim-indent-guides customize
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 2
let g:indent_guides_enable_on_vim_startup = 1


highlight ColorColumn ctermbg=0 guibg=lightgrey


" ----------------------
" Color Scheme 
" ----------------------
"
    " Gruvbox
    " colorscheme gruvbox

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
    nnoremap <leader>\ :e ~/.vimrc<CR>

    " Open empty buffer 
    nnoremap <leader>` :enew<CR>

    " Navigate VIM panel
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>l :wincmd l<CR>

    " Next Buffer
    nnoremap <leader>n :bnext<CR>

    " Next Buffer
    nnoremap <leader>b :bprevious<CR>

    " Close Buffer
    nnoremap <leader>d :bd<CR>

    " Vertical Split
    nmap <leader>vs <C-w>v<CR>
    nmap <leader>s  <C-w>s<CR>

" ----------------------
" Document Manipulation
" ----------------------
"
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
" Nerd Tree 
" ----------------------
"
"    nnoremap <Leader>p :NERDTreeToggle<CR>

" ----------------------
" Console Log 
" ----------------------
" Console log from insert mode; Puts focus inside parentheses
"    imap \cll console.log();<Esc>hh
" Console log from visual mode on next line, puts visual selection inside parentheses
"    vmap \cll yocll<Esc>pysib"f"i: <ESC>la, <ESC>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
"    nmap \cll yiwocll<Esc>pysib"f"i: <ESC>la, <ESC>p

" ----------------------
" Colon Manipulation Obj:key 
" ----------------------
" Change CoLon to Comma
"map <silent> <Plug>ChangeColonToComma V<Plug>VChangeColonToComma
"  \:call repeat#set("\<Plug>ChangeColonToComma", v:count)<cr>
"map <silent> \clc <Plug>ChangeColonToComma
"
"" Change CoLon to Comma (visual)
"vmap <silent> <Plug>VChangeColonToComma <esc>:set nohlsearch<cr>gv:s/:.*/,/<cr>:let @/=''<cr>:set hlsearch<cr>
"  \:call repeat#set("\<Plug>VChangeColonToComma", v:count)<cr>
"vmap <silent> \clc <Plug>VChangeColonToComma
"
"" Delete after CoLon
"map <silent> <Plug>ColonDelete V<Plug>VColonDelete
"  \:call repeat#set("\<Plug>ColonDelete", v:count)<cr>
"map <silent> \cld <Plug>ColonDelete
"
"" Delete after CoLon (visual)
"vmap <silent> <Plug>VColonDelete <esc>:set nohlsearch<cr>gv:s/:.*//<cr>:let @/=''<cr>:set hlsearch<cr>
"  \:call repeat#set("\<Plug>VColonDelete", v:count)<cr>
"vmap <silent> \cld <Plug>VColonDelete

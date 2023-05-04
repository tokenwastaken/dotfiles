:set paste
:set autochdir
:set fileformat=unix
nmap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :Files<Cr>
nnoremap <C-g> :Rg<Cr>
nnoremap <silent> <expr> <c-r><c-r> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":FZF\<cr>"
noremap <C-w>- :split<cr>
noremap <C-w>\| :vsplit<cr>
nnoremap <C-Left> :bprevious<CR>
nnoremap <C-Right> :bnext<CR>
nnoremap <C-Up> :bfirst<CR>
nnoremap <C-Down> :blast<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug '~/my-prototype-plugin'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()     
filetype plugin indent on  

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'

"syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
"filetype plugin on      " use the file type plugins

let mapleader=','

set nocompatible

"execute pathogen#infect()

call plug#begin('~/.nvim/plugged')
	Plug 'morhetz/gruvbox'
	Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
	Plug 'bling/vim-airline'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'scrooloose/nerdtree'
"	Plug 'scrooloose/syntastiC'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-surround'
"	Plug 'tpope/vim-vinegar'
	Plug 'elzr/vim-json', { 'for': 'json' }
	Plug 'benekastah/neomake'
	Plug 'xolox/vim-misc', { 'for': 'lua' }
	Plug 'xolox/vim-lua-ftplugin', { 'for': 'lua'}
call plug#end()

colorscheme gruvbox
set background=dark

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1


map <C-k> :NERDTreeToggle<CR>
"
"  Vim-Airline settings
"
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#branch#enabled = 1

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
"  nmap <leader>5 <Plug>AirlineSelectTab5
"  nmap <leader>6 <Plug>AirlineSelectTab6
"  nmap <leader>7 <Plug>AirlineSelectTab7
"  nmap <leader>8 <Plug>AirlineSelectTab8
"  nmap <leader>9 <Plug>AirlineSelectTab9
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

map <leader>ev :e ~/.config/nvim/init.vim<cr>

set number
set relativenumber

set cursorline " 突出显示当前行
"set ruler " 打开状态栏标尺
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
"set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4 " 设定 tab 长度为 4
set nowrapscan
"set showmatch " 插入括号时，短暂地跳转到匹配的对应括号
"set matchtime=2 " 短暂跳转到匹配括号的时间
set smartindent
set laststatus=2
set statusline=\ %<%f[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

"set foldenable " 开始折叠
"set foldmethod=syntax " 设置语法折叠
"set foldcolumn=0 " 设置折叠区域的宽度
"setlocal foldlevel=1 " 设置折叠层数为
"" set foldclose=all " 设置为自动关闭折叠
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠

"let g:ycm_global_ycm_extra_conf = '/Users/DouglasYin/.nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_signs = 0

" toggle invisible characters
set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
"set lcs=tab:..,eol:¬,trail:▪,precedes:«,extends:»
"set list

autocmd! BufWritePost,BufEnter * Neomake

"let g:lua_compiler_name = '/usr/local/bin/luajit -b'
"

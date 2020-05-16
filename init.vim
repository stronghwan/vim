
" - For Neovim: stdpath('data') . '/plugged'
syntax on
set number
set cursorline
set linespace=15
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 按F2进入粘贴模式
set pastetoggle=<F2>
" 保存时自动格式化
" au BufWrite * :Autoformat

" C++下的自动命令, 添加到 .vimrc
" autocmd BufWritePre,BufRead *.c :inoremap <Enter> <c-r>=BracketsEnter('}')<CR>
" autocmd BufWritePre,BufRead *.cpp :inoremap <Enter> <c-r>=BracketsEnter('}')<CR>

" function BracketsEnter(char)
" 	if getline('.')[col('.')-1] == a:char
" 		return "\<Enter>\<Tab>\<Esc>mpa\<Enter>\<Esc>`pa"
" 	else
" 		return "\<Enter>"
" 	endif
" endf  
let g:interestingWordsRandomiseColors = 1
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" c++支持 c++11
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
if &term=="xterm"
	set t_Co=8
	set t_Sb=^[[4%dm
	set t_Sf=^[[3%dm
endif

""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=25
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
autocmd vimenter * NERDTree
" - Avoid using standard Vim directory names like 'plugin'
"   ycm与snippet冲突
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'lfv89/vim-interestingwords'
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'ycm-core/YouCompleteMe'
Plug 'Chiel92/vim-autoformat'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Initialize plugin system
call plug#end()
set number
syntax on
" 使用,w替换Esc:w操作
let mapleader=","
inoremap <leader>w <Esc>:w<cr>
inoremap jj <Esc>`^
inoremap <C-z> <Esc>ui
imap{ {}<ESC>i<CR><ESC>O
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <F9> :TagbarToggle<cr>
nnoremap <leader>w :w<cr>
inoremap <c-d> jjyyi

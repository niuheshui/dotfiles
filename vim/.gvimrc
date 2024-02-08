"https://zhuanlan.zhihu.com/p/21328642
" Startup {{{
filetype indent plugin on


" vim 文件折叠方式为 marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}

" General {{{
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" 设置 alt 键不映射到菜单栏
set winaltkeys=no
" }}}

" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}

" GUI {{{
set guifont=Ubuntu\ Mono\ 20
colorscheme atom
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
"}}}

" Format {{{
set autoindent
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set foldmethod=indent
syntax on
" }}}

" Keymap {{{
let mapleader=" "

" map <leader>tn :tabnew<cr>
" map <leader>tc :tabclose<cr>
" map <leader>th :tabp<cr>
" map <leader>tl :tabn<cr>

" 移动分割窗口
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" 正常模式下 alt+j,k,h,l 调整分割窗口大小
nnoremap <C-Down>   :resize +5<cr>
nnoremap <C-Up>     :resize -5<cr>
nnoremap <C-Left>   :vertical resize -5<cr>
nnoremap <C-Right>  :vertical resize +5<cr>

" " IDE like delete
" inoremap <C-BS> <Esc>bdei

" nnoremap vv ^vg_
" " 转换当前行为大写
" inoremap <C-u> <esc>mzgUiw`za
" " 命令模式下的行首尾
" cnoremap <C-a> <home>
" cnoremap <C-e> <end>
" 
" nnoremap <F2> :setlocal number!<cr>
" nnoremap <leader>w :set wrap!<cr>
" 
" imap <C-v> "+gP
" vmap <C-c> "+y
" vnoremap <BS> d
" vnoremap <C-C> "+y
" vnoremap <C-Insert> "+y
" imap <C-V>		"+gP
" map <S-Insert>		"+gP
" cmap <C-V>		<C-R>+
" cmap <S-Insert>		<C-R>+
" 
" exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
" exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']
" 
" " 打开当前目录 windows
" map <leader>ex :!start explorer %:p:h<CR>
" 
" " 打开当前目录CMD
" map <leader>cmd :!start<cr>
" " 打印当前时间
" map <F3> a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
" 
" " 复制当前文件/路径到剪贴板
" nmap ,fn :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
" nmap ,fp :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
" 
" " 设置切换Buffer快捷键"
" nnoremap <C-left> :bn<CR>
" nnoremap <C-right> :bp<CR>

" }}}

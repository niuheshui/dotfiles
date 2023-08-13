" Vim 基于 Vi. 设置“no兼容”会切换默认的 Vi 兼容模式并启用有用的 Vim 功能
" 对于名为 '~/.vimrc' 的文件来说,这个配置选项不是必需的,因为如果该文件存在,Vim 会自动进入不兼容模式
" 但我们将其包含在这里,以防万一该配置文件以其他方式加载（例如保存为 `foo`,然后 Vim 以 `vim -u foo` 启动）

set nocompatible

" 打开语法高亮
syntax on

" 禁用默认的 Vim 启动消息
set shortmess+=I

" 显示行号
set number

" 这将启用相对行编号模式
" 启用 number 和relativenumber 后,当前行显示真实行号,而所有其他行（上方和下方）均相对于当前行进行编号
" 这很有用,因为您一眼就可以知道向上或向下跳转到特定行需要多少计数,通过 {count}k 向上或通过 {count}j 向下

set relativenumber

" 即使只打开一个窗口,也始终在底部显示状态行
set laststatus=2

" 默认情况下,退格键的行为有点不直观
" 例如,默认情况下,您不能在用“i”设置的插入点之前退格
" 此配置使退格键的行为更加合理,因为您可以在任何内容上退格键
set backspace=indent,eol,start

" 默认情况下,Vim 不允许您隐藏具有未保存更改的缓冲区（即具有未在任何窗口中显示的缓冲区）
" 这是为了防止您忘记未保存的更改然后退出,例如 通过`:qa!`
" 我们发现隐藏缓冲区足以帮助禁用此保护
" 有关详细信息,请参阅“:helphidden”
set hidden

" 当正在搜索的字符串中的所有字符均为小写时,此设置使搜索不区分大小写
" 但是,如果搜索包含任何大写字母,则搜索将区分大小写
" 这使得搜索更加方便
set ignorecase
set smartcase

" 在键入时启用搜索,而不是等到按 Enter 键
set incsearch

" 取消绑定一些无用/烦人的默认按键绑定
nmap Q <Nop> 
" 正常模式下的“Q”进入 Ex 模式
" 你几乎永远不会想要这个

" 禁用声音铃声,因为它很烦人
set noerrorbells visualbell t_vb=

" 启用鼠标支持
" 您应该避免过度依赖它,但有时它很方便
" set mouse+=a

" 尽量避免使用方向键移动等不良习惯
" 这并不是唯一可能的坏习惯
" 例如,按住 h/j/k/l 键进行移动,而不是使用更高效的移动命令,也是一个坏习惯
" 前者可以通过 .vimrc 强制执行,而我们不知道如何阻止后者
" 在正常模式下执行此操作...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...并且处于插入模式
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

" 输入的命令
set showcmd
" tab为4
set tabstop=4 				

" << >> 缩进为4个空格
set shiftwidth=4			

" 设置主题
colorscheme desert


" 折叠
" manual 手动 退出文件不保存
" indent 缩进
" syntax 语法
" marker 标记 退出可以保存
set foldmethod=marker

set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim 

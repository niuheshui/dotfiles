" Mouse support 启用鼠标支持，允许在vim中使用鼠标进行操作/*{{{*/  
set mouse=a
set ttymouse=sgr
set balloonevalterm
" Styled and colored underline support 支持带样式和颜色的下划线，可以在vim中使用不同的下划线样式和颜色
let &t_AU = "\e[58:5:%dm"
let &t_8u = "\e[58:2:%lu:%lu:%lum"
let &t_Us = "\e[4:2m"
let &t_Cs = "\e[4:3m"
let &t_ds = "\e[4:4m"
let &t_Ds = "\e[4:5m"
let &t_Ce = "\e[4:0m"
" Strikethrough 支持删除线，可以在vim中使用删除线来标记文本
let &t_Ts = "\e[9m"
let &t_Te = "\e[29m"
" Truecolor support 支持真彩色，可以在vim中使用真彩色来渲染文本
"let &t_8f = "\e[38:2:%lu:%lu:%lum"
"let &t_8b = "\e[48:2:%lu:%lu:%lum"
"let &t_RF = "\e]10;?\e\\"
"let &t_RB = "\e]11;?\e\\"
" Bracketed paste 支持括号粘贴，用于在vim中粘贴带有括号的文本
let &t_BE = "\e[?2004h"
let &t_BD = "\e[?2004l"
let &t_PS = "\e[200~"
let &t_PE = "\e[201~"
" Cursor control 控制光标行为
let &t_RC = "\e[?12$p"
let &t_SH = "\e[%d q"
let &t_RS = "\eP$q q\e\\"
let &t_SI = "\e[5 q"
let &t_SR = "\e[3 q"
let &t_EI = "\e[1 q"
let &t_VS = "\e[?12l"
" Focus tracking 跟踪焦点的变化，当焦点从vim窗口切换到其他窗口时，执行相应的操作
let &t_fe = "\e[?1004h"
let &t_fd = "\e[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"
" Window title 设置vim窗口的标题，可以在终端中显示自定义的窗口标题
let &t_ST = "\e[22;2t"
let &t_RT = "\e[23;2t"

" vim hardcodes background color erase even if the terminfo file does
" not contain bce. This causes incorrect background rendering when
" using a color theme with a background color in terminals such as
" kitty that do not support background color erase.
let &t_ut=''
"/*}}}*/


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

" 禁用声音铃声,因为它很烦人
set noerrorbells visualbell t_vb=

" 输入的命令
set showcmd
" tab为4
set tabstop=4 				

" << >> 缩进为4个空格
set shiftwidth=4			

" 设置主题
colorscheme gruvbox
set background=dark

" 折叠
" manual 手动 退出文件不保存
" indent 缩进
" syntax 语法
" marker 标记 退出可以保存
set foldmethod=syntax

set hlsearch
" 提示菜单
set wildmenu
"设置正则表达式的魔术（magic）模式
set magic 
setlocal noswapfile " 不要生成swap文件
" 使用空格替换Tab
set expandtab
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{&encoding}\ 0x%B]\ Ln\ %l,\ Col\ %c/%L%) " 设置在状态行显示的信息
" 退格键可以一次删除4个空格
set softtabstop=4
" 设置折叠区域宽度
set foldcolumn=0
" 开启真色彩
set termguicolors
" 设置显示隐藏字符
" set list
" 隐藏字符样式 eol:c 回车 tab:xyz 显示为xyyyyz这样 space:c 空格 trail: 行末的空格
" set listchars=tab:>~,trail:·,eol:↵
" 自动缩进
" set autoindent
" 智能缩进
set smartindent
" c-style缩进
" set cindent
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright


set cursorline

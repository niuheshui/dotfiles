" 取消绑定一些无用/烦人的默认按键绑定
nmap Q <Nop> 
" 正常模式下的“Q”进入 Ex 模式
" 你几乎永远不会想要这个

" 尽量避免使用方向键移动等不良习惯/*{{{*/
" 这并不是可能的坏习惯
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

" 括号补全/*{{{*/
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap "" ""<ESC>i
inoremap '' ''<ESC>i

" 使用空格键代替zo和zc开关折叠
nnoremap <space> za

" command line mode path auto-completion
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'


let mapleader=" "
nnoremap <leader>e  :NERDTreeToggle<CR>

"nmap <leader>s :source ~/.vimrc<cr>
"nmap <leader>e :e ~/.vimrc<cr>

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


tnoremap <ESC>      <C-\><C-N>



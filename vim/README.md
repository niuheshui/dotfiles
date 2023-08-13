文件浏览器
[https://github.com/preservim/nerdtree](https://github.com/preservim/nerdtree)  
`git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree`  
`vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q`  

vim主题仓库
`git clone https://github.com/flazz/vim-colorschemes.git ~/.vim`  

- :q 退出（关闭窗口）
- :w 保存（写）
- :wq 保存然后退出
- :e {文件名} 打开要编辑的文件
- :ls 显示打开的缓存
- :help {标题} 打开帮助文档
  - :help :w 打开 :w 命令的帮助文档
  - :help w 打开 w 移动的帮助文档

- 基本移动: hjkl （左， 下， 上， 右）
- 词： w （下一个词）， b （词初）， e （词尾）
- 行： 0 （行初）， ^ （第一个非空格字符）， $ （行尾）
- 屏幕： H （屏幕首行）， M （屏幕中间）， L （屏幕底部）
- 翻页： Ctrl-u （上翻）， Ctrl-d （下翻）
- 文件： gg （文件头）， G （文件尾）
- 行数： :{行数}<CR> 或者 {行数}G ({行数}为行数)
- 杂项： % （找到配对，比如括号或者 /* */ 之类的注释对）
- 查找： f{字符}， t{字符}， F{字符}， T{字符}
  - 查找/到 向前/向后 在本行的{字符}
  - , / ; 用于导航匹配
- 搜索: /{正则表达式}, n / N 用于导航匹配

- 可视化：v
- 可视化行： V
- 可视化块：Ctrl+v

- i 进入插入模式
  - 但是对于操纵/编辑文本，不单想用退格键完成
- O / o 在之上/之下插入行
- d{移动命令} 删除 {移动命令}
  - 例如，dw 删除词, d$ 删除到行尾, d0 删除到行头。
- c{移动命令} 改变 {移动命令}
  - 例如，cw 改变词
  - 比如 d{移动命令} 再 i
- x 删除字符（等同于 dl）
- s 替换字符（等同于 xi）
- 可视化模式 + 操作
  - 选中文字, d 删除 或者 c 改变
- u 撤销, <C-r> 重做
- y 复制 / “yank” （其他一些命令比如 d 也会复制）
- p 粘贴

- 3w 向前移动三个词
- 5j 向下移动5行
- 7dw 删除7个词

- ci( 改变当前括号内的内容
- ci[ 改变当前方括号内的内容
- da' 删除一个单引号字符串， 包括周围的单引号

[pro git](https://git-scm.com/book/zh/v2)


基础
- git help <command>: 获取 git 命令的帮助信息
- git init: 创建一个新的 git 仓库，其数据会存放在一个名为 .git 的目录下
- git status: 显示当前的仓库状态
- git add <filename>: 添加文件到暂存区
- git commit: 创建一个新的提交
  - 如何编写 [良好的提交信息!](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
  - 为何要 [编写良好的提交信息](https://cbea.ms/git-commit/)
- git log: 显示历史日志
- git log --all --graph --decorate: 可视化历史记录（有向无环图）
- git diff <filename>: 显示与暂存区文件的差异
- git diff <revision> <filename>: 显示某个文件两个版本之间的差异
- git checkout <revision>: 更新 HEAD 和目前的分支


分支和合并
- git branch: 显示分支
- git branch <name>: 创建分支
- git checkout -b <name>: 创建分支并切换到该分支
  - 相当于 git branch <name>; git checkout <name>
- git merge <revision>: 合并到当前分支
- git mergetool: 使用工具来处理合并冲突
- git rebase: 将一系列补丁变基（rebase）为新的基线



远端操作
- git remote: 列出远端
- git remote add <name> <url>: 添加一个远端
- git push <remote> <local branch>:<remote branch>: 将对象传送至远端并更新远端引用
- git branch --set-upstream-to=<remote>/<remote branch>: 创建本地和远端分支的关联关系
- git fetch: 从远端获取对象/索引
- git pull: 相当于 git fetch; git merge
- git clone: 从远端下载仓库
- git submodule add <url> <path>: 添加子模块
- git rm --cached -f <path>: 删除子模块
- git submodule update --init --recursive: 初始化更新仓库中的子模块，并且递归更新子模块中的子模块

撤销
- git commit --amend: 编辑提交的内容或信息
- git reset HEAD <file>: 恢复暂存的文件
- git checkout -- <file>: 丢弃修改
- git restore: git2.32版本后取代git reset 进行许多撤销操作


Git 高级操作
- git config: Git 是一个 [高度可定制的](https://git-scm.com/docs/git-config) 工具
- git clone --depth=1: 浅克隆（shallow clone），不包括完整的版本历史信息
- git add -p: 交互式暂存
- git rebase -i: 交互式变基
- git blame: 查看最后修改某行的人
- git stash: 暂时移除工作目录下的修改内容
- git bisect: 通过二分查找搜索历史记录
- .gitignore: [指定](https://git-scm.com/docs/gitignore) 故意不追踪的文件

[version-control](https://missing-semester-cn.github.io/2020/version-control/)  

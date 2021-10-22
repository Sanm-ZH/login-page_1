#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 获取当前分支名
branch=$(git symbolic-ref --short -q HEAD)

git push origin $branch:$branch
git push origin $branch:gh-pages
echo -e '\033[32m 已推送至github \n'

git remote set-url origin git@gitee.com:sanm-zh/login-page_1.git

git push origin $branch:$branch
echo -e '\033[32m 已推送至gitee \n'

git remote set-url origin git@github.com:Sanm-ZH/login-page_1.git
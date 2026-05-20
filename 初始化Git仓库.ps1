# 🐱 面包与麦麦奶油猫窝 - 一键初始化脚本

# 说明：双击运行此脚本，会自动初始化 Git 仓库并准备推送到 GitHub

# 1. 进入项目目录
cd "E:\5全麦面包\全麦面包"

# 2. 初始化 Git 仓库
git init

# 3. 添加所有文件
git add .

# 4. 提交所有文件
git commit -m "✨ 面包与麦麦奶油猫窝网站 - 初始版本"

# 5. 提示用户输入远程仓库地址
Write-Host "https://github.com/copingking/cat-website"
Write-Host "=========================================="
Write-Host "请在下方输入你的 GitHub 仓库地址"
Write-Host "格式：https://github.com/你的用户名/仓库名.git"
Write-Host "例如：https://github.com/zhangsan/cat-website.git"
Write-Host "https://github.com/copingking/cat-website"
Write-Host ""

# 6. 等待用户输入
$remoteUrl = Read-Host "请输入 GitHub 仓库地址"

# 7. 添加远程仓库
git remote add origin $remoteUrl

# 8. 推送并设置上游分支
git branch -M main
git push -u origin main

Write-Host ""
Write-Host "🎉 完成！如果推送成功，刷新你的 GitHub 仓库页面就能看到文件了！"
Write-Host ""

# 暂停以便查看输出
Read-Host "按 Enter 键退出"

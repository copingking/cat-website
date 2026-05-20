# 🐱 面包与麦麦的奶油猫窝 - GitHub 部署指南

> 使用 GitHub + Netlify 实现自动化部署，让你每次更新内容后网站自动发布！

---

## 📋 第一部分：创建 GitHub 仓库

### 步骤 1：登录 GitHub
1. 访问 https://github.com
2. 登录你的账号（如果没有，请先注册）

### 步骤 2：创建新仓库
1. 点击右上角的 **"+"** 按钮
2. 选择 **"New repository"**
3. 填写仓库信息：
   - **Repository name**: `cat-website`（或你喜欢的名字）
   - **Description**: `面包与麦麦的奶油猫窝 - 记录两只猫咪的日常`
   - **Visibility**: 选择 **Public**（公开）或 **Private**（私有）
   - **不要勾选** "Add a README file"（我们已经有项目文件了）
4. 点击 **"Create repository"**
5. **重要**：创建完成后，**不要关闭这个页面**，稍后会用到

---

## 📋 第二部分：准备本地项目

### 步骤 1：安装 Git（如果还没安装）
1. 访问 https://git-scm.com/download/win 下载 Windows 版本
2. 安装时一路点击 "Next" 即可

### 步骤 2：在项目中初始化 Git
打开 PowerShell（管理员），运行：

```bash
# 进入项目目录
cd "E:\5全麦面包\全麦面包"

# 初始化 Git 仓库
git init

# 添加所有文件到暂存区
git add .

# 提交所有文件
git commit -m "✨ 面包与麦麦奶油猫窝网站 - 初始版本"

# 添加远程仓库（注意：替换成你自己的仓库地址）
git remote add origin https://github.com/你的用户名/cat-website.git

# 推送到 GitHub
git branch -M main
git push -u origin main
```

### 步骤 3：刷新 GitHub 页面
如果推送成功，刷新你的 GitHub 仓库页面，应该能看到所有文件了！

---

## 📋 第三部分：连接 Netlify 实现自动部署

### 步骤 1：登录 Netlify
1. 访问 https://app.netlify.com
2. 点击 **"Add new site"**
3. 选择 **"Import an existing project"**

### 步骤 2：连接 GitHub
1. 在 "Git provider" 页面，选择 **"Configure Netlify on GitHub"**
2. 安装 Netlify App（如果提示）
3. 授权 Netlify 访问你的 GitHub 仓库

### 步骤 3：选择仓库
1. 在列表中找到你的 `cat-website` 仓库
2. 点击它

### 步骤 4：配置构建设置
在 "Site settings" 页面填写：

| 设置项 | 值 |
|--------|-----|
| **Repository name** | cat-website |
| **Build command** | `npm run build` |
| **Publish directory** | `dist` |

### 步骤 5：环境变量（可选）
如果你的项目需要环境变量，点击 "Advanced" 添加。

### 步骤 6：部署站点
1. 点击 **"Deploy site"**
2. 等待 Netlify 构建（大约 1-2 分钟）
3. 构建完成后，你会获得一个 Netlify 子域名（如：`random-name-12345.netlify.app`）
4. **自定义域名**（可选）：
   - 在 "Domain settings" 中添加你的自定义域名
   - 按照 Netlify 的指示配置 DNS

---

## 🎉 恭喜！部署完成！

现在你的网站已经上线了！每次你推送新代码到 GitHub，Netlify 会自动重新构建和部署。

---

## 🔄 以后如何更新网站内容？

### 更新照片或代码
1. 修改 `public/images/` 中的照片
2. 或编辑 `src/data/catData.js` 中的内容
3. 运行构建命令：
   ```bash
   cd "E:\5全麦面包\全麦面包"
   $env:PATH = "E:\ai工具;$env:PATH"
   & "E:\ai工具\npm.cmd" run build
   ```

4. 提交并推送更改：
   ```bash
   git add .
   git commit -m "📸 添加新照片"
   git push
   ```

5. **Netlify 会自动检测到 GitHub 的更新，并在 1-2 分钟内自动重新部署！**

---

## 📝 常用 Git 命令速查

| 命令 | 作用 |
|------|------|
| `git status` | 查看当前状态 |
| `git add .` | 添加所有更改 |
| `git commit -m "消息"` | 提交更改 |
| `git push` | 推送到 GitHub |
| `git pull` | 从 GitHub 拉取最新代码 |

---

## ⚠️ 常见问题

### Q: 推送时要求登录 GitHub？
**A**: 在弹出的窗口中输入你的 GitHub 用户名和密码（或 Personal Access Token）。

### Q: 推送失败，提示权限不足？
**A**: 
1. 在 GitHub Settings → Developer settings → Personal access tokens
2. 生成一个新的 token，勾选 `repo` 权限
3. 使用这个 token 作为密码登录

### Q: Netlify 构建失败？
**A**: 
1. 检查 "Deploys" 页面查看错误日志
2. 确保 `npm run build` 命令可以成功执行
3. 检查 `package.json` 中的依赖是否正确

---

## 💡 额外建议

### 添加 .gitkeep 文件保持空目录
如果 `dist` 目录在构建前不存在，Git 不会跟踪它。在 `public/images` 目录下创建一个 `.gitkeep` 文件：

```
public/images/.gitkeep
```

### 忽略大型照片文件（可选）
如果照片太多太大，可以：
1. 使用 .gitignore 忽略 `public/images/*.jpg`
2. 将照片单独上传到图床（如：Cloudinary、Imgur）
3. 在代码中使用图床链接

---

## 🎀 小提示

- 📸 **照片更新**：直接在 GitHub 网页上编辑 `catData.js` 文件，Netlify 会自动部署！
- 📝 **日记更新**：同样在 GitHub 网页上编辑 `catData.js`
- 🎨 **样式调整**：编辑 `src/` 下的组件文件
- 🔍 **预览**：每次推送后，Netlify 会生成预览链接

---

**祝你使用愉快！有任何问题随时问我！🍞☁️**

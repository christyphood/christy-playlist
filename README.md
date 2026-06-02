# JOOX 歌单页 · Figma 1:1 还原

基于 [Figma 设计稿](https://www.figma.com/design/B3IBoyyQI4wRbn9L1ypXam/JOOX-%E8%AE%BE%E8%AE%A1%E4%BC%98%E5%8C%96%E4%B8%93%E9%A1%B9?node-id=6-1728)（节点 `6:1728`）的静态页面。

## 在线访问（GitHub Pages）

推送 `main` 分支后，Actions 会自动部署：

**https://christyphood.github.io/christy-playlist/**

部署进度：[Actions](https://github.com/christyphood/christy-playlist/actions)

### 首次部署 checklist

1. 在 GitHub 创建空仓库 `christyphood/christy-playlist`（若尚未创建）
2. 本机登录 GitHub 后推送：
   ```bash
   cd joox-playlist
   git push -u origin main
   ```
   SSH 失败可改用 HTTPS：
   ```bash
   git remote set-url origin https://github.com/christyphood/christy-playlist.git
   git push -u origin main
   ```
3. 仓库 **Settings → Pages → Build and deployment** 中，**Source** 选 **GitHub Actions**（不是 “Deploy from branch”）
4. 等待 workflow `Deploy to GitHub Pages` 变绿，打开上方链接

一键脚本（需已配置 git 凭据）：

```bash
./scripts/deploy.sh
```

## 本地预览

直接打开 **`index.html`** 即可（双击，或在 Cursor 里右键 → **Reveal in Finder** 后用浏览器打开）。

### 手机

- 页面会按视口等比缩放至 375×812 画板，铺满屏幕且保留全部动画
- 支持安全区（刘海/底部横条）、触摸点击展开与关闭
- 可「添加到主屏幕」后以全屏 Web App 方式打开

> 页面会通过 CDN 加载 Tailwind。需要能访问外网；若样式没出来，检查网络或换用下面的离线版本。

### 离线 / 无 CDN

使用 **`index1.html` + `styles.css`**，不依赖 Tailwind CDN，同样可直接双击打开。

### Figma 导出

在地址栏加参数：`index.html?figma=1`，会加载 `copy-to-figma.js` 浮动按钮。

依赖同目录下的 `assets/` 文件夹，资源路径为相对路径。

## 文件结构

```
joox-playlist/
├── index.html          ← 主页面（Pages 入口）
├── assets/             ← Figma 切图
├── .github/workflows/  ← GitHub Pages 自动部署
└── scripts/deploy.sh   ← 推送并触发部署
```

## 说明

- 画板逻辑尺寸 **375×812**（@1x），页面会自动等比缩放适配窗口
- `3d-shelf.html`、`index1.html` 为实验/离线版本，不参与线上部署

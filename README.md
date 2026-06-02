# JOOX 歌单页 · Figma 1:1 还原

基于 [Figma 设计稿](https://www.figma.com/design/B3IBoyyQI4wRbn9L1ypXam/JOOX-%E8%AE%BE%E8%AE%A1%E4%BC%98%E5%8C%96%E4%B8%93%E9%A1%B9?node-id=6-1728)（节点 `6:1728`）的静态页面。

## 预览

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
├── index.html      ← 主页面
├── styles.css
└── assets/         ← Figma 切图
```

## 说明

- 画板尺寸 **750×1624**（@2x），页面会自动等比缩放适配窗口
- `src/` 内为早期的 React 草稿，可忽略；日常只需使用根目录静态文件

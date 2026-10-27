# GitHub Pages 与离线使用

## Pages

1. 公开推送本仓库。
2. Settings → Pages → 从分支 `main` / **仓库根目录** 部署（不是 `/docs`）。
3. 访问 `https://<user>.github.io/offline-ops-toolkit/`。

落地页是根目录 `index.html`，工具页在 `tools/`。

## 离线 / 本地

```bash
python -m http.server 8765 --bind 127.0.0.1
# 打开 http://127.0.0.1:8765/
```

也可用 `file://` 打开。注意：部分浏览器在非安全上下文禁用 `crypto.subtle`，SHA256 校验请优先用 localhost 服务。

## 语言切换

落地页把 EN/中文记在 `localStorage`（`oot-lang`）。首次访问跟随 `navigator.language`。

## 安全提示

- 工具不拉取远程脚本、无统计信标。
- SHA256 校验不会上传文件。
- 不要把生产密钥贴进 JSON 格式化后再截图发到公开聊天。

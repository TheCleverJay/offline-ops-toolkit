# offline-ops-toolkit

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)
[![Pages-ready](https://img.shields.io/badge/GitHub%20Pages-ready-brightgreen.svg)](./docs/zh/pages.md)

面向 Agent 运维的 **静态、无追踪浏览器工具**：JSON 格式化、Cron 解释、SHA256 文件校验（Web Crypto）、UTF-8 乱码实验室。本地打开 `index.html` 或挂 GitHub Pages —— 无构建、无 CDN、无统计。

- [English](./README.md) · 中文
- 许可证：MIT
- 仓库：[`YuanAqi/offline-ops-toolkit`](https://github.com/YuanAqi/offline-ops-toolkit)

## 做什么

盯 Agent 时经常要做几件小事：把 JSON 排整齐、用白话看懂一段 cron、不上传文件就算 SHA-256、试着修好日志乱码。**offline-ops-toolkit** 就是四个静态网页加一个中英落地页——本机打开或挂 GitHub Pages 即可，不用安装、没有统计追踪。给需要这些浏览器小工具的人用。

## 一条命令演示

```bash
python -m http.server 8765 --bind 127.0.0.1
# 打开 http://127.0.0.1:8765/
./tests/smoke.sh
```

也可直接用 `file://` 打开 `index.html`（部分浏览器对 SHA256 要求安全上下文，建议用 localhost）。

## 工具一览

| 文件 | 作用 |
|---|---|
| `index.html` | 中英落地页（语言切换会记住） |
| `tools/json-formatter.html` | 美化 / 压缩 / 校验 |
| `tools/cron-explain.html` | 五段 cron → 中英白话 |
| `tools/sha256-verify.html` | 拖文件 → SHA-256 → 比对 |
| `tools/utf8-mojibake.html` | 常见误解码修复尝试 |

## 局限

- Cron 工具解释结构，**不是**下次触发日历。
- 乱码修复只覆盖一种常见失败模式。
- 超大文件哈希受浏览器内存限制。

## 文档

- [docs/zh/pages.md](./docs/zh/pages.md)
- [docs/en/pages.md](./docs/en/pages.md)
- [docs/zh/tools.md](./docs/zh/tools.md)

## 贡献

见 [CONTRIBUTING.md](./CONTRIBUTING.md) · [中文](./CONTRIBUTING.zh-CN.md)。  
[SECURITY.md](./SECURITY.md) · [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) · [CHANGELOG.md](./CHANGELOG.md)。

## 不包含

联网请求、追踪脚本、付费 SKU 目录、收款地址、API 密钥。

# offline-ops-toolkit

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)
[![Pages-ready](https://img.shields.io/badge/GitHub%20Pages-ready-brightgreen.svg)](./docs/en/pages.md)

**Static, tracker-free browser tools** for agent operators: JSON formatter, cron explainer, SHA256 file verify (Web Crypto), UTF-8 mojibake lab. Open `index.html` locally or via GitHub Pages — no build step, no CDN, no analytics.

- English · [中文](./README.zh-CN.md)
- License: MIT
- GitHub: [`YuanAqi/offline-ops-toolkit`](https://github.com/YuanAqi/offline-ops-toolkit)
- Pages: enable GitHub Pages from repo root → `index.html`

## What it does

Small everyday chores while you watch agents: pretty-print JSON, read a cron expression in plain language, check a file’s SHA-256 without uploading it, and try to fix garbled UTF-8 log text. **offline-ops-toolkit** is four static HTML pages plus a bilingual landing page — open locally or on GitHub Pages, no install, no trackers. For anyone who wants these helpers in a browser tab.

## One-command demo

```bash
# from repo root — open the bilingual landing
python -m http.server 8765 --bind 127.0.0.1
# then visit http://127.0.0.1:8765/
./tests/smoke.sh
```

Or open `index.html` directly via `file://` (SHA256 needs a secure context on some browsers — prefer `localhost`).

## Tools

| File | Does |
|---|---|
| [`index.html`](./index.html) | Bilingual landing (EN/中文 toggle, remembers choice) |
| [`tools/json-formatter.html`](./tools/json-formatter.html) | Pretty / minify / validate |
| [`tools/cron-explain.html`](./tools/cron-explain.html) | 5-field cron → plain EN/ZH |
| [`tools/sha256-verify.html`](./tools/sha256-verify.html) | Drop file → SHA-256 → compare |
| [`tools/utf8-mojibake.html`](./tools/utf8-mojibake.html) | Latin-1-bytes-as-UTF-8 repair attempts |

## Limitations

- Cron tool explains structure; it is **not** a next-fire calendar.
- Mojibake repair is best-effort for one common failure mode.
- SHA256 of huge files is limited by browser memory.
- No network calls by design — if a future tool needs one, it will be called out loudly.

## Docs

- [docs/en/pages.md](./docs/en/pages.md) — GitHub Pages + offline use
- [docs/zh/pages.md](./docs/zh/pages.md)
- [docs/en/tools.md](./docs/en/tools.md) — per-tool notes
- [docs/zh/tools.md](./docs/zh/tools.md)

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) · [中文](./CONTRIBUTING.zh-CN.md).  
[SECURITY.md](./SECURITY.md) · [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) · [CHANGELOG.md](./CHANGELOG.md).

## Not included

Network calls, trackers, paid SKU catalogs, payment addresses, API keys.

# GitHub Pages & offline use

## Pages

1. Push this repo publicly.
2. Settings → Pages → Deploy from branch `main` / **root** (not `/docs`).
3. Visit `https://<user>.github.io/offline-ops-toolkit/`.

The landing page is `index.html` at the repository root. Tool pages live under `tools/`.

## Offline / local

```bash
python -m http.server 8765 --bind 127.0.0.1
# open http://127.0.0.1:8765/
```

You can also open `index.html` via `file://`. Note: some browsers restrict `crypto.subtle` outside a secure context (`https` or `http://localhost`). Prefer the local server for SHA256 verify.

## Language toggle

The landing page remembers EN/中文 in `localStorage` (`oot-lang`). First visit follows `navigator.language`.

## Security notes

- Tools do not fetch remote scripts or analytics beacons.
- SHA256 verify never uploads the file; hashing uses `crypto.subtle` in your browser.
- Do not paste production secrets into the JSON formatter and then screenshot public chats.

# Tool notes

## JSON Formatter

Paste tool-schema dumps or routine JSON. Pretty / minify / validate stay in-tab. Invalid JSON shows the parser message. Good for checking agent tool schemas before a deploy.

## Cron Explain

Supports `*`, `*/n`, `a-b`, `a,b,c` on five fields (`min hour dom mon dow`). Day-of-week `0`/`7` = Sunday. Not a full cron next-fire simulator — it explains structure so humans catch typos before scheduling a routine.

## SHA256 Verify

Drop a zip or binary; optional expected digest from `SHA256SUMS.txt`. Mismatch → do not trust the file. Large files are limited by browser memory. Requires Web Crypto (secure context).

## UTF-8 Mojibake Lab

If GBK/other bytes were decoded as Latin-1 and then shown as Unicode, "Latin-1 bytes → UTF-8" can recover common Chinese garbling. Not a universal fix for double-encoded messes — if the paste already contains code points &gt; 255, the tool will say so.

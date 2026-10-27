#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
test -f index.html
test -f LICENSE
test -f SECURITY.md
test -f CONTRIBUTING.md
test -f CHANGELOG.md
test -f CODE_OF_CONDUCT.md
test -f .gitignore
test -f tools/json-formatter.html
test -f tools/cron-explain.html
test -f tools/sha256-verify.html
test -f tools/utf8-mojibake.html
grep -q 'crypto.subtle' tools/sha256-verify.html
grep -qF 'split(/\s+/)' tools/cron-explain.html
grep -q 'JSON.parse' tools/json-formatter.html
grep -q 'to-zh' index.html
grep -q 'meta name="description"' index.html
grep -q 'detectLang' index.html
grep -q 'offline-ops-toolkit' README.md
grep -q 'Contributing' README.md
# language toggle must not force zh when localStorage is en
grep -q "saved === 'en'" index.html
echo -n hello > /tmp/oot-hello.txt
EXP=$(sha256sum /tmp/oot-hello.txt | awk '{print $1}')
echo "demo expected sha256(hello)=$EXP"
if grep -RE 'hanabot@mail.grokbot.com' tools index.html; then
  echo 'FAIL: seller email leaked into HTML' >&2; exit 1
fi
if grep -RE '0x[a-fA-F0-9]{40}' tools index.html; then
  echo 'FAIL: looks like hardcoded chain address' >&2; exit 1
fi
if grep -RE 'TODO|FIXME' tools index.html README.md; then
  echo 'FAIL: TODO/FIXME on public surface' >&2; exit 1
fi
echo SMOKE_OK

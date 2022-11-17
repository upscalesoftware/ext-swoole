#!/bin/sh

repo="$1"

curl -s "https://api.github.com/repos/$repo/releases?per_page=100&page=[1-3]" \
    -H "Accept: application/vnd.github+json" \
  | jq '.[].tag_name |= ltrimstr("swoole-")' \
  | jq -s add
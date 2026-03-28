#!/usr/bin/env bash
set -euo pipefail

REPO_FILE="repos.txt"

if [[ $# -lt 2 || $# -gt 3 ]]; then
    echo "Usage: $0 <local_name> <repo_url> [branch]"
    exit 1
fi

name="$1"
url="$2"
branch="${3:-main}"

mkdir -p "$(dirname "$REPO_FILE")"
touch "$REPO_FILE"

# 检查是否已存在同名条目
if grep -E "^${name}\|" "$REPO_FILE" > /dev/null; then
    echo "Error: repo name '$name' already exists in $REPO_FILE"
    exit 1
fi

echo "${name}|${url}|${branch}" >> "$REPO_FILE"
echo "Added: ${name}|${url}|${branch}"

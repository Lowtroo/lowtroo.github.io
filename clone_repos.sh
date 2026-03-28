#!/usr/bin/env bash
set -euo pipefail

REPO_FILE="repos.txt"
CONTENTS_DIR="contents"

mkdir -p "$CONTENTS_DIR"

while IFS='|' read -r name repo branch; do
    [[ -z "${name// }" ]] && continue
    [[ "${name:0:1}" == "#" ]] && continue

    target="${CONTENTS_DIR}/${name}"

    if [[ -n "${GH_PAT:-}" ]]; then
        clone_url="https://x-access-token:${GH_PAT}@github.com/${repo}.git"
    else
        clone_url="git@github.com:${repo}.git"
    fi

    if [[ -d "$target/.git" ]]; then
        echo "[update] $name"
        git -C "$target" remote set-url origin "$clone_url"
        git -C "$target" fetch origin
        git -C "$target" checkout "$branch"
        git -C "$target" reset --hard "origin/$branch"
    else
        echo "[clone] $name"
        git clone --branch "$branch" "$clone_url" "$target"
    fi
done < "$REPO_FILE"

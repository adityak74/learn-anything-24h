#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_NAME="learn-anything-24h"
CLAUDE_SOURCE_DIR="$ROOT_DIR/skills/claude/$SKILL_NAME"
CODEX_SOURCE_DIR="$ROOT_DIR/skills/codex/$SKILL_NAME"

if [[ ! -f "$CLAUDE_SOURCE_DIR/SKILL.md" ]]; then
  echo "Missing Claude skill source at $CLAUDE_SOURCE_DIR/SKILL.md" >&2
  exit 1
fi

if [[ ! -f "$CODEX_SOURCE_DIR/SKILL.md" ]]; then
  echo "Missing Codex skill source at $CODEX_SOURCE_DIR/SKILL.md" >&2
  exit 1
fi

install_claude_skill() {
  local target_root="$1"
  local target_dir="$target_root/$SKILL_NAME"

  mkdir -p "$target_dir"
  cp "$CLAUDE_SOURCE_DIR/SKILL.md" "$target_dir/SKILL.md"

  echo "Installed Claude skill to $target_dir"
}

install_codex_skill() {
  local target_root="$1"
  local target_dir="$target_root/$SKILL_NAME"

  mkdir -p "$target_dir/agents"
  cp "$CODEX_SOURCE_DIR/SKILL.md" "$target_dir/SKILL.md"

  if [[ -f "$CODEX_SOURCE_DIR/agents/openai.yaml" ]]; then
    cp "$CODEX_SOURCE_DIR/agents/openai.yaml" "$target_dir/agents/openai.yaml"
  fi

  echo "Installed Codex skill to $target_dir"
}

install_claude_skill "${HOME}/.claude/skills"
install_codex_skill "${HOME}/.codex/skills"

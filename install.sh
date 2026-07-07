#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_NAME="learn-anything-24h"
CLAUDE_SOURCE_DIR="$ROOT_DIR/skills/claude/$SKILL_NAME"
CODEX_SOURCE_DIR="$ROOT_DIR/skills/codex/$SKILL_NAME"
HERMES_SOURCE_DIR="$ROOT_DIR/skills/hermes/$SKILL_NAME"
OPENCLAW_SOURCE_DIR="$ROOT_DIR/skills/openclaw/$SKILL_NAME"
OPENCODE_SOURCE_DIR="$ROOT_DIR/skills/opencode/$SKILL_NAME"

if [[ ! -f "$CLAUDE_SOURCE_DIR/SKILL.md" ]]; then
  echo "Missing Claude skill source at $CLAUDE_SOURCE_DIR/SKILL.md" >&2
  exit 1
fi

if [[ ! -f "$CODEX_SOURCE_DIR/SKILL.md" ]]; then
  echo "Missing Codex skill source at $CODEX_SOURCE_DIR/SKILL.md" >&2
  exit 1
fi

if [[ ! -f "$HERMES_SOURCE_DIR/SKILL.md" ]]; then
  echo "Missing Hermes skill source at $HERMES_SOURCE_DIR/SKILL.md" >&2
  exit 1
fi

if [[ ! -f "$OPENCLAW_SOURCE_DIR/SKILL.md" ]]; then
  echo "Missing OpenClaw skill source at $OPENCLAW_SOURCE_DIR/SKILL.md" >&2
  exit 1
fi

if [[ ! -f "$OPENCODE_SOURCE_DIR/SKILL.md" ]]; then
  echo "Missing OpenCode skill source at $OPENCODE_SOURCE_DIR/SKILL.md" >&2
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

install_hermes_skill() {
  local target_root="$1"
  local target_dir="$target_root/$SKILL_NAME"

  mkdir -p "$target_dir"
  cp "$HERMES_SOURCE_DIR/SKILL.md" "$target_dir/SKILL.md"

  echo "Installed Hermes skill to $target_dir"
}

install_openclaw_skill() {
  local target_root="$1"
  local target_dir="$target_root/$SKILL_NAME"

  mkdir -p "$target_dir"
  cp "$OPENCLAW_SOURCE_DIR/SKILL.md" "$target_dir/SKILL.md"

  echo "Installed OpenClaw skill to $target_dir"
}

install_opencode_skill() {
  local target_root="$1"
  local target_dir="$target_root/$SKILL_NAME"

  mkdir -p "$target_dir"
  cp "$OPENCODE_SOURCE_DIR/SKILL.md" "$target_dir/SKILL.md"

  echo "Installed OpenCode skill to $target_dir"
}

install_claude_skill "${HOME}/.claude/skills"
install_codex_skill "${HOME}/.codex/skills"
install_hermes_skill "${HOME}/.hermes/skills"
install_openclaw_skill "${HOME}/.openclaw/skills"
install_opencode_skill "${HOME}/.config/opencode/skills"

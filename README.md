<h1 align="center">Learn Anything 24h</h1>

<p align="center">
  <img src="./logo.svg" alt="Learn Anything 24h logo" width="860">
</p>

<p align="center">
  <a href="https://adityakarnam.com">
    <img src="https://img.shields.io/badge/Checkout-adityakarnam.com-111827?style=for-the-badge&logo=googlechrome&logoColor=white" alt="Checkout adityakarnam.com">
  </a>
</p>

<p align="center">
  <a href="#"><img src="https://img.shields.io/badge/Skill-Learn%20Anything%2024h-0f172a" alt="Skill"></a>
  <a href="#claude-code"><img src="https://img.shields.io/badge/Claude%20Code-supported-d97706" alt="Claude Code"></a>
  <a href="#codex"><img src="https://img.shields.io/badge/Codex-supported-2563eb" alt="Codex"></a>
  <a href="#hermes"><img src="https://img.shields.io/badge/Hermes-supported-16a34a" alt="Hermes"></a>
  <a href="#openclaw"><img src="https://img.shields.io/badge/OpenClaw-supported-0f766e" alt="OpenClaw"></a>
  <a href="#opencode"><img src="https://img.shields.io/badge/OpenCode-supported-7c2d12" alt="OpenCode"></a>
  <a href="#what-it-does"><img src="https://img.shields.io/badge/Mode-active%20learning-059669" alt="Mode"></a>
  <a href="#what-you-get"><img src="https://img.shields.io/badge/Output-final%20artifact-7c3aed" alt="Output"></a>
  <a href="https://github.com/adityak74/learn-anything-24h/stargazers"><img src="https://img.shields.io/github/stars/adityak74/learn-anything-24h?style=social" alt="GitHub stars"></a>
  <a href="https://github.com/adityak74/learn-anything-24h/blob/main/LICENSE"><img src="https://img.shields.io/github/license/adityak74/learn-anything-24h" alt="License"></a>
</p>

> Turn any hard topic into a focused 24-hour learning sprint.
>
> This is not a reading-list generator. It is a forced-output learning skill for Claude Code, Codex, Hermes, OpenClaw, and OpenCode that compresses a complex topic into an active-learning plan with exercises, teach-back prompts, and a required final artifact.
>
> **Promise:** operational fluency in one day, not fake mastery.

## Quick Start

1. Install the skill for your platform from the [Install](#install) section below.
2. Invoke it with a concrete outcome, for example:

```text
/learn-anything-24h Learn distributed systems for Staff Engineer interviews
```

3. Get a time-boxed sprint with concepts, exercises, traps, and a final artifact.

## What's Inside

Skill Description
`learn-anything-24h` Turns any hard topic into a focused 24-hour active-learning sprint with concrete exercises and a required proof-of-learning artifact.

## Why This Exists

Most AI learning prompts fail in predictable ways:

- they generate huge reading lists
- they confuse breadth with usefulness
- they avoid retrieval practice
- they end with no proof of learning

`learn-anything-24h` fixes that by forcing:

- 80/20 concept mapping
- prerequisite compression
- active recall
- build / solve / derive work
- misconception checks
- a final artifact you can actually show

## What It Does

Given a topic, the skill produces a structured sprint with:

- a concrete target outcome
- the 5-9 concepts that matter most
- what to ignore for now
- a time-boxed learning schedule
- warm-up, applied, and hard questions
- teach-back prompts
- misconception traps
- a small resource strategy
- a final proof-of-learning artifact
- a 7-day continuation plan

It works especially well for:

- AI and ML systems
- software engineering domains
- research papers
- interview preparation
- architecture and staff-level topics
- learning-by-building projects

## The `learn-anything-24h` Skill

Works best when you ask to learn something deeply enough to explain it, implement it, teach it, or use it in an interview.

## What Changes When Active

- It prioritizes the few concepts that actually move the topic.
- It forces retrieval practice instead of passive reading.
- It gives you applied exercises that expose fake understanding quickly.
- It ends with a concrete artifact you can show, ship, or teach from.

## Supported Platforms

- Claude Code
- Codex
- Hermes
- OpenClaw
- OpenCode

## What You Get

Every run follows this structure:

```markdown
# 24-Hour Learning Sprint: <Topic>

## 0. Target Outcome
## 1. The 80/20 Map
## 2. Prerequisite Compression
## 3. 24-Hour Schedule
## 4. Exercises
## 5. Misconception Traps
## 6. Resource Strategy
## 7. Final Artifact
## 8. Mastery Rubric
## 9. Next 7 Days
```

## Example Prompts

```text
/learn-anything-24h Learn vLLM internals deeply enough to build one
/learn-anything-24h Learn distributed systems for Staff Engineer interviews
/learn-anything-24h Learn compilers by building a tiny interpreter
/learn-anything-24h Learn the Transformer architecture from first principles
/learn-anything-24h Learn MCP server architecture in 6 hours
```

## Claude Code

Claude Code uses the Claude-specific variant in:

```text
skills/claude/learn-anything-24h/SKILL.md
```

The repo also includes Claude marketplace metadata:

```text
.claude-plugin/plugin.json
.claude-plugin/marketplace.json
```

Install with either:

```bash
claude marketplace add .
```

Or, from inside Claude Code:

```text
/plugin add
```

## Codex

Codex uses the Codex-specific variant in:

```text
skills/codex/learn-anything-24h/SKILL.md
skills/codex/learn-anything-24h/agents/openai.yaml
```

The Codex version includes its own agent metadata for installation into the local Codex skill directory.

This repo also includes a project-local Codex skill at:

```text
.codex/skills/learn-anything-24h/SKILL.md
.codex/skills/learn-anything-24h/agents/openai.yaml
```

That lets Codex discover the skill directly when this repository is open.

## Hermes

Hermes uses the Hermes-specific variant in:

```text
skills/hermes/learn-anything-24h/SKILL.md
```

## OpenClaw

OpenClaw uses the OpenClaw-specific variant in:

```text
skills/openclaw/learn-anything-24h/SKILL.md
```

This repo also includes an agent-compatible project-local skill at:

```text
.agents/skills/learn-anything-24h/SKILL.md
```

## OpenCode

OpenCode uses the OpenCode-specific variant in:

```text
skills/opencode/learn-anything-24h/SKILL.md
```

This repo also includes native and agent-compatible project-local skills at:

```text
.opencode/skills/learn-anything-24h/SKILL.md
.agents/skills/learn-anything-24h/SKILL.md
```

## Install

Pick your platform below. Each section stays collapsed to keep the README compact.

<details>
<summary><strong>Claude Code</strong></summary>

```bash
claude marketplace add .
```

Or, from inside Claude Code:

```text
/plugin add
```
</details>

<details>
<summary><strong>Codex</strong></summary>

```bash
codex marketplace add .
```

Or, from inside Codex:

```text
/plugin add
```
</details>

<details>
<summary><strong>Hermes</strong></summary>

```bash
mkdir -p ~/.hermes/skills/learn-anything-24h
cp skills/hermes/learn-anything-24h/SKILL.md ~/.hermes/skills/learn-anything-24h/SKILL.md
```

Then invoke it as:

```text
/learn-anything-24h Learn distributed systems for Staff Engineer interviews
```
</details>

<details>
<summary><strong>OpenClaw</strong></summary>

Install into the current workspace:

```bash
openclaw skills install ./skills/openclaw/learn-anything-24h
```

Install globally for local agents:

```bash
openclaw skills install ./skills/openclaw/learn-anything-24h --global
```

Manual global install also works:

```bash
mkdir -p ~/.openclaw/skills/learn-anything-24h
cp skills/openclaw/learn-anything-24h/SKILL.md ~/.openclaw/skills/learn-anything-24h/SKILL.md
```
</details>

<details>
<summary><strong>OpenCode</strong></summary>

Global install:

```bash
mkdir -p ~/.config/opencode/skills/learn-anything-24h
cp skills/opencode/learn-anything-24h/SKILL.md ~/.config/opencode/skills/learn-anything-24h/SKILL.md
```

This repo also ships a project-local OpenCode skill in:

```text
.opencode/skills/learn-anything-24h/SKILL.md
```
</details>

`install.sh` is still available for direct local skill installation across all supported platforms.

## Design Principles

- output over passive consumption
- practical usefulness over breadth
- honest scope over fake mastery
- resource minimalism over link spam
- artifact-based proof over vague understanding

## Good Fit

Use this skill when you want:

- a serious crash course on a difficult topic
- interview-focused preparation
- a learn-by-building sprint
- a paper-to-practice understanding loop
- a structured way to become useful fast

## Not For

This project does not try to:

- replace long-term deliberate practice
- guarantee full mastery in a day
- generate giant course catalogs
- act like a passive study assistant

## Share It

If you publish examples, demos, or forks, good showcase topics include:

- `Learn LLM inference engines deeply enough to build one`
- `Learn Kubernetes from first principles in 24 hours`
- `Learn distributed systems for senior/staff interviews`
- `Learn retrieval systems by building one`
- `Learn MCP by implementing a local server`

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=adityak74/learn-anything-24h&type=Date)](https://star-history.com/#adityak74/learn-anything-24h&Date)

## License

MIT

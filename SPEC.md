# Learn Anything 24h — Product Requirements & Skill Specification

> Turn any complex topic into a 24-hour active-learning sprint.

## 1. Overview

**Learn Anything 24h** is a portable AI agent skill for Claude Code, Codex, and other `SKILL.md`-compatible coding agents. The skill transforms any complex topic into a focused 24-hour learning sprint designed for operational fluency.

The goal is not passive content consumption. The goal is to help a user understand, explain, build, derive, apply, and test themselves on a topic within one day.

Examples:

```text
/learn-anything-24h Learn vLLM internals
/learn-anything-24h Learn world models for AI agents
/learn-anything-24h Learn distributed systems for staff engineer interviews
/learn-anything-24h Learn MCP server architecture
/learn-anything-24h Learn transformer inference optimization
```

## 2. Problem Statement

Most people fail to learn hard topics quickly because they default to passive reading, scattered videos, tutorial hopping, and vague learning goals.

Existing AI assistants can explain concepts, but they usually produce:

* long reading lists
* shallow summaries
* unfocused study plans
* no measurable output
* no retrieval practice
* no build artifact
* no pressure-tested mastery loop

`learn-anything-24h` solves this by forcing a structured, active-learning sprint with a final deliverable.

## 3. Product Positioning

### Hook

**Learn anything in 24 hours.**

### Honest Promise

**Operational fluency in one day, not fake mastery.**

### Differentiator

This is not a course generator.
This is not a reading-list generator.
This is not a motivational productivity prompt.

It is a forced-output learning system that compresses a complex topic into:

* first-principles map
* 80/20 concept selection
* prerequisite compression
* active recall
* hands-on build/derive/apply tasks
* teach-back prompts
* final artifact

## 4. Target Users

### Primary Users

* software engineers
* AI engineers
* research engineers
* students learning technical topics
* builders trying to understand new technologies fast
* founders evaluating a new technical domain
* job seekers preparing for interviews
* agent users who want repeatable deep-learning workflows

### Secondary Users

* educators
* technical writers
* course creators
* product managers learning technical systems
* researchers entering new fields

## 5. Core User Stories

### US1: Learn a technical topic quickly

As an engineer, I want to give the skill a hard topic so that it creates a 24-hour plan that helps me become useful fast.

Example:

```text
/learn-anything-24h Learn LLM inference engines deeply enough to build one
```

### US2: Prepare for interviews

As a job seeker, I want the skill to generate a sprint focused on interview readiness so that I can explain, compare, and solve problems around the topic.

Example:

```text
/learn-anything-24h Learn distributed systems for Staff Engineer interviews
```

### US3: Learn from a paper

As a research engineer, I want to give the skill a paper/topic so that it converts the material into a paper-reading sprint, derivation exercises, and implementation tasks.

Example:

```text
/learn-anything-24h Learn the Mamba architecture from the paper
```

### US4: Build a project while learning

As a builder, I want the skill to teach through implementation so that I leave with a working artifact, not just notes.

Example:

```text
/learn-anything-24h Learn MCP by building a local MCP server
```

### US5: Generate a final artifact

As a learner, I want the sprint to end with something concrete so that I can prove understanding.

Possible final artifacts:

* mini implementation
* technical blog post
* architecture diagram
* flashcard deck
* interview answer bank
* research memo
* design doc
* demo project

## 6. Goals

### Product Goals

1. Create a reusable skill that works across Claude Code, Codex, and other agent environments.
2. Turn any complex topic into a structured 24-hour active-learning sprint.
3. Force measurable learning outputs.
4. Avoid passive reading-list behavior.
5. Make the skill simple enough to install, share, fork, and customize.
6. Make the GitHub repo viral-friendly with strong examples and copy-paste usage.

### Learning Goals

By the end of a sprint, the user should be able to:

* explain the topic from first principles
* identify the core concepts and tradeoffs
* solve applied problems
* build or design something related to the topic
* teach the topic back clearly
* recognize common misconceptions
* know what to learn next

## 7. Non-Goals

This project does not aim to:

* guarantee true mastery in 24 hours
* replace long-term deliberate practice
* become a full LMS
* track user progress across weeks
* store personal learning history
* generate massive courses
* produce passive reading plans
* scrape paid course content
* automate credentialing or certification

## 8. Skill Behavior

When the user invokes the skill with a topic, the agent should produce a complete 24-hour learning sprint.

The skill should assume the user wants an intense plan unless they specify otherwise.

### Default Assumptions

If the user does not provide context, assume:

```text
Learner level: strong software engineer
Goal: build + explain + apply
Time budget: 24 hours
Learning style: active recall, implementation, and teach-back
Output quality: professional
```

### Clarifying Questions

The skill may ask at most two clarifying questions, only if necessary:

1. What is your current level: beginner, intermediate, or advanced?
2. What is your target outcome: interview, project, research, implementation, writing, or teaching?

If the topic is clear enough, the skill should proceed without asking.

## 9. Required Output Format

Every generated sprint must include the following sections:

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

## 10. Sprint Structure

### 0. Target Outcome

Define what the learner should be able to do after 24 hours.

Bad:

```text
Understand Kubernetes.
```

Good:

```text
By the end of 24 hours, you should be able to explain Kubernetes control-plane architecture, deploy a service, debug pod scheduling issues, compare Kubernetes with simpler deployment models, and produce a small working deployment with notes.
```

### 1. The 80/20 Map

List 5–9 concepts that matter most.

For each concept, include:

* why it matters
* what confusion it removes
* simple analogy
* practical example

### 2. Prerequisite Compression

Separate prerequisites into:

```text
Must know
Can ignore for now
Learn only if blocked
```

The skill should aggressively reduce prerequisite sprawl.

### 3. 24-Hour Schedule

Use this default schedule:

```markdown
### Hour 0–1: Orientation
### Hour 1–3: Foundations
### Hour 3–6: Mechanisms
### Hour 6–9: Guided Examples
### Hour 9–12: Build / Solve / Derive
### Hour 12–16: Advanced Concepts
### Hour 16–20: Independent Challenge
### Hour 20–22: Retrieval and Feynman Test
### Hour 22–24: Final Artifact
```

Each block must include:

* goal
* what to learn
* what to do
* output
* self-check question

### 4. Exercises

Every sprint must include:

* 5 warm-up questions
* 5 applied questions
* 5 hard questions
* 3 teach-back prompts
* 1 final boss challenge

### 5. Misconception Traps

List common wrong mental models and corrections.

Example:

```markdown
Wrong model: KV cache is just ordinary caching.
Correct model: KV cache stores attention keys and values from previous tokens to avoid recomputing them during autoregressive generation.
```

### 6. Resource Strategy

Recommend resource categories instead of overwhelming the learner.

Default structure:

```markdown
Use only:
1. One canonical doc/book/paper
2. One implementation or repo
3. One high-quality lecture/video
4. One hands-on exercise
```

The skill should not generate a giant link dump unless the user explicitly asks for links.

### 7. Final Artifact

Every sprint must end with a required artifact.

The artifact should be selected based on the user’s goal:

| Goal         | Final Artifact                          |
| ------------ | --------------------------------------- |
| Interview    | Answer bank + system design explanation |
| Project      | Working implementation                  |
| Research     | Paper memo + derivation notes           |
| Writing      | Technical blog post                     |
| Teaching     | Lesson plan + explain-back script       |
| Architecture | Design doc + diagram                    |
| Debugging    | Checklist + failure-mode guide          |

### 8. Mastery Rubric

Define levels:

```text
Beginner
Useful
Strong
Expert
```

The rubric should be concrete and measurable.

### 9. Next 7 Days

Include a lightweight continuation plan after the 24-hour sprint.

The purpose is to prevent the learner from overestimating mastery after one day.

## 11. Skill Modes

The skill should support multiple modes through natural language.

### Default Mode

General 24-hour learning sprint.

```text
/learn-anything-24h Learn compilers
```

### Interview Mode

Prioritize questions, tradeoffs, whiteboarding, and explanation.

```text
/learn-anything-24h Learn distributed systems for interviews
```

### Builder Mode

Prioritize implementation and debugging.

```text
/learn-anything-24h Learn vLLM by building a toy inference engine
```

### Research Mode

Prioritize papers, equations, assumptions, and experimental framing.

```text
/learn-anything-24h Learn diffusion models from first principles
```

### Staff Engineer Mode

Prioritize architecture, tradeoffs, failure modes, scaling, and decision-making.

```text
/learn-anything-24h Learn feature stores like a Staff Engineer
```

### Paper Mode

Convert a paper into a 24-hour understanding sprint.

```text
/learn-anything-24h Learn the ReAct paper deeply
```

### Crash Mode

For users with less than 24 hours.

```text
/learn-anything-24h Learn vector databases in 6 hours
```

## 12. Repository Structure

Recommended repo layout:

```text
learn-anything-24h/
├── README.md
├── SPEC.md
├── LICENSE
├── skills/
│   └── learn-anything-24h/
│       └── SKILL.md
├── examples/
│   ├── vllm-internals.md
│   ├── world-models.md
│   ├── distributed-systems.md
│   ├── mcp-servers.md
│   └── transformer-inference.md
├── prompts/
│   ├── launch-post.md
│   ├── demo-prompts.md
│   └── eval-prompts.md
├── tests/
│   ├── expected-output-structure.md
│   └── regression-checklist.md
└── install.sh
```

## 13. `SKILL.md` Requirements

The skill file should contain:

1. YAML frontmatter
2. clear trigger description
3. behavioral instructions
4. output contract
5. mode detection rules
6. anti-patterns
7. examples

Recommended frontmatter:

```yaml
---
name: learn-anything-24h
description: Turn any complex topic into a 24-hour active-learning sprint with 80/20 concept mapping, prerequisite compression, active recall, hands-on exercises, teach-back prompts, and a final artifact. Use when the user wants to learn, master, understand, crash-course, prepare for, or become operationally fluent in a difficult topic quickly.
---
```

## 14. Agent Style Requirements

The skill should be:

* intense
* practical
* concise
* structured
* high-signal
* honest about limits
* biased toward action
* biased toward output
* skeptical of passive learning

The skill should avoid:

* motivational fluff
* generic study advice
* huge reading lists
* vague explanations
* “just watch these videos”
* unmeasurable goals
* fake mastery claims
* too many clarifying questions

## 15. Quality Bar

A good output should make the user think:

```text
I know exactly what to do for the next 24 hours.
I know what matters and what does not.
I have exercises that will expose whether I actually understand this.
I will end with something I can show, publish, or use.
```

A bad output looks like:

```text
Here are 15 YouTube videos, 10 blogs, and a general study schedule.
```

## 16. Example Invocation

```text
/learn-anything-24h Learn LLM inference engines deeply enough to build one
```

Expected output should include:

* transformer inference lifecycle
* tokenization
* prefill vs decode
* KV cache
* batching
* continuous batching
* paged attention
* speculative decoding
* quantization
* GPU memory constraints
* scheduler design
* final artifact: toy inference engine design or implementation

## 17. MVP Scope

### MVP Must Include

* one production-ready `SKILL.md`
* simple install instructions
* Claude Code install path
* Codex install path
* 3–5 example generated sprints
* README with strong positioning
* license
* contribution guide
* demo prompts

### MVP Should Include

* `install.sh`
* examples for AI engineering topics
* viral launch post
* test checklist
* roadmap

### MVP Can Defer

* web app
* CLI wrapper
* progress tracker
* spaced repetition export
* Anki export
* Notion export
* Obsidian vault generator
* multi-day curriculum mode

## 18. Installation

### Claude Code

```bash
mkdir -p ~/.claude/skills/learn-anything-24h
cp skills/learn-anything-24h/SKILL.md ~/.claude/skills/learn-anything-24h/SKILL.md
```

### Codex

```bash
mkdir -p ~/.codex/skills/learn-anything-24h
cp skills/learn-anything-24h/SKILL.md ~/.codex/skills/learn-anything-24h/SKILL.md
```

### Portable Agent Skills Layout

```bash
mkdir -p ~/.agents/skills/learn-anything-24h
cp skills/learn-anything-24h/SKILL.md ~/.agents/skills/learn-anything-24h/SKILL.md
```

## 19. README Requirements

The README should answer:

1. What is this?
2. Why does it exist?
3. Who is it for?
4. How do I install it?
5. How do I use it?
6. What does the output look like?
7. What topics can I use it for?
8. How is this different from a course or study plan?
9. How can I contribute?

Recommended README headline:

```markdown
# Learn Anything 24h

A Claude Code / Codex skill that turns any complex topic into a 24-hour active-learning sprint.

No passive reading lists. No tutorial hell. Just compressed fundamentals, active recall, build tasks, teach-back prompts, and a final artifact.
```

## 20. Viral Launch Positioning

### One-Liner

```text
I built a Claude/Codex skill that turns any hard topic into a 24-hour active-learning sprint.
```

### Launch Post

```text
I open-sourced learn-anything-24h.

It turns any complex topic into a 24-hour active-learning sprint.

Not a reading list.
Not a course.
Not tutorial hell.

It gives you:

- 80/20 concept map
- prerequisite compression
- active recall
- build/derive/apply tasks
- teach-back prompts
- final artifact

Use it for vLLM, world models, MCP, compilers, distributed systems, papers, anything.

Goal: operational fluency in one day.
```

### GitHub Description

```text
A Claude Code / Codex skill that turns any complex topic into a 24-hour active-learning sprint.
```

### GitHub Topics

```text
claude-code
codex
agent-skills
skill-md
ai-agents
learning
active-recall
study-system
developer-tools
prompt-engineering
llm
education
```

## 21. Success Metrics

### GitHub Metrics

* 100 stars: early validation
* 500 stars: strong niche signal
* 1,000 stars: viral developer-tool signal
* 5,000 stars: category-defining skill

### Product Metrics

* users install the skill without help
* users generate useful sprints for unrelated topics
* outputs consistently include final artifacts
* users fork and add examples
* users share screenshots of generated plans
* users request additional modes

### Quality Metrics

A generated sprint passes if it includes:

* target outcome
* 80/20 map
* prerequisite compression
* hour-by-hour plan
* exercises
* misconception traps
* final artifact
* mastery rubric

## 22. Test Checklist

Use these prompts to test the skill:

```text
/learn-anything-24h Learn Kubernetes in 24 hours
/learn-anything-24h Learn vLLM internals
/learn-anything-24h Learn world models for AI agents
/learn-anything-24h Learn distributed systems for Staff Engineer interviews
/learn-anything-24h Learn MCP server development
/learn-anything-24h Learn compilers by building a tiny interpreter
/learn-anything-24h Learn the Transformer architecture from first principles
/learn-anything-24h Learn CUDA programming for LLM inference
```

Each output should be checked for:

* no passive reading-list behavior
* no overpromising mastery
* concrete final artifact
* clear schedule
* topic-specific exercises
* strong misconception section
* measurable rubric

## 23. Safety and Integrity

The skill should avoid claiming that true expertise can be guaranteed in 24 hours.

Preferred wording:

```text
Operational fluency in 24 hours.
```

Avoid:

```text
Master anything completely in 24 hours.
```

The skill should also avoid recommending unsafe, illegal, or harmful learning paths. For dangerous topics, it should redirect toward safe, defensive, educational, or policy-compliant alternatives.

## 24. Future Roadmap

### v0.1

* initial `SKILL.md`
* README
* install instructions
* example outputs
* launch post

### v0.2

* mode-specific templates
* more examples
* install script
* contribution guide

### v0.3

* optional Obsidian export
* optional Anki flashcard export
* final artifact templates
* evaluation checklist

### v0.4

* CLI wrapper
* topic templates
* paper-reading mode
* interview mode
* builder mode

### v1.0

* stable skill format
* broad agent compatibility
* strong docs
* community examples
* tested output consistency

## 25. Open Questions

1. Should the skill stay as one universal `SKILL.md`, or should modes become separate skills?
2. Should the repo include generated example outputs or only the skill?
3. Should the project support Obsidian/Anki exports?
4. Should there be a `learn-anything-7d` companion skill?
5. Should the skill include web research instructions, or stay model-only by default?

## 26. Recommended Product Decision

Keep the MVP extremely simple.

Ship:

```text
One repo.
One skill.
One strong README.
Five killer examples.
One install script.
One viral launch post.
```

The project should win because it is instantly understandable:

```text
learn-anything-24h = give it a hard topic, get a serious 24-hour sprint.
```

## 27. Final Product Principle

The skill exists to turn curiosity into execution.

The user should never leave with only a list of links.
They should leave with a plan, questions, tasks, and an artifact that proves they learned something real.

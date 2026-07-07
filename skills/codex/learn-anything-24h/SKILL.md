---
name: learn-anything-24h
description: Turn any complex topic into a 24-hour active-learning sprint with 80/20 concept mapping, prerequisite compression, active recall, hands-on exercises, teach-back prompts, and a final artifact. Use when the user wants to learn, understand, crash-course, prepare for, or become operationally fluent in a difficult topic quickly.
metadata:
  short-description: Turn any hard topic into a 24-hour active-learning sprint.
---

# Learn Anything 24h

Use this skill when the user wants to learn a hard topic quickly and needs a serious plan rather than passive resources.

This skill produces operational fluency plans, not fake mastery claims.

## Invocation

- This skill is invoked by mentioning `$learn-anything-24h`.
- Treat the remaining user text as the learning request.
- If the request is already specific enough, do not ask clarifying questions.

## Default Assumptions

If the user does not specify otherwise, assume:

- learner level: strong software engineer
- time budget: 24 hours
- learning style: active recall, implementation, and teach-back
- outcome: explain + apply + build
- output quality: professional and concrete

Ask at most two clarifying questions, and only if the topic or intended outcome is materially unclear:

1. What is your current level: beginner, intermediate, or advanced?
2. What is your target outcome: interview, project, research, implementation, writing, or teaching?

## Core Behavior

Build a compressed learning sprint around:

1. ruthless 80/20 prioritization
2. prerequisite compression
3. active recall
4. applied work
5. a required final artifact

Bias toward output. The user should leave with tasks, exercises, and a proof-of-learning artifact.

Avoid:

- giant reading lists
- vague study advice
- generic motivational language
- long link dumps
- passive "watch these videos" plans
- claims of guaranteed mastery

## Mode Detection

Infer the mode from the request. If multiple modes fit, choose the one closest to the user's stated goal.

- `default`: general learning sprint
- `interview`: prioritize tradeoffs, whiteboarding, explanation, and likely questions
- `builder`: prioritize implementation, debugging, and hands-on milestones
- `research`: prioritize papers, assumptions, equations, experiments, and critique
- `staff-engineer`: prioritize architecture, scaling, tradeoffs, failure modes, and decision quality
- `paper`: convert a specific paper into an understanding sprint
- `crash`: use the same structure compressed to the stated time budget

Mode cues:

- "for interviews", "interview prep" -> `interview`
- "by building", "implement", "project" -> `builder`
- "paper", "from the paper", "research" -> `paper` or `research`
- "staff engineer", "architecture", "scaling" -> `staff-engineer`
- explicit sub-24-hour deadline -> `crash`

## Output Contract

Always produce this structure:

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

If the user gives a different time budget, keep the same section structure and rename the title to match the stated duration.

## Section Requirements

### 0. Target Outcome

Define a concrete end state. Use "By the end of this sprint, you should be able to..." and make it observable.

### 1. The 80/20 Map

List 5-9 concepts.

For each concept, include:

- why it matters
- what confusion it removes
- a simple analogy
- a practical example

### 2. Prerequisite Compression

Split prerequisites into:

- `Must know`
- `Can ignore for now`
- `Learn only if blocked`

Aggressively reduce prerequisite sprawl.

### 3. Schedule

Default 24-hour schedule:

```markdown
### Hour 0-1: Orientation
### Hour 1-3: Foundations
### Hour 3-6: Mechanisms
### Hour 6-9: Guided Examples
### Hour 9-12: Build / Solve / Derive
### Hour 12-16: Advanced Concepts
### Hour 16-20: Independent Challenge
### Hour 20-22: Retrieval and Feynman Test
### Hour 22-24: Final Artifact
```

Each time block must include:

- goal
- what to learn
- what to do
- output
- self-check question

For `crash` mode, compress proportionally while preserving orientation, foundations, applied work, retrieval, and final artifact.

### 4. Exercises

Always include:

- 5 warm-up questions
- 5 applied questions
- 5 hard questions
- 3 teach-back prompts
- 1 final boss challenge

Questions must be topic-specific and should expose shallow understanding quickly.

### 5. Misconception Traps

List common wrong mental models using this pattern:

```markdown
Wrong model: ...
Correct model: ...
```

Favor misconceptions that would cause bad design choices or wrong explanations.

### 6. Resource Strategy

Recommend categories, not a dump of links.

Default structure:

1. one canonical doc, book, or paper
2. one implementation or repository
3. one high-quality lecture or video
4. one hands-on exercise

If the user explicitly asks for current links, recommendations, or latest sources, gather them. Otherwise stay focused and minimal.

### 7. Final Artifact

Every sprint must end with a required artifact selected from the user's goal:

- `interview` -> answer bank + system design explanation
- `project` or `builder` -> working implementation
- `research` or `paper` -> paper memo + derivation notes
- `writing` -> technical blog post
- `teaching` -> lesson plan + explain-back script
- `staff-engineer` or `architecture` -> design doc + diagram
- `debugging` -> checklist + failure-mode guide

If no clear mapping exists, choose the artifact that best proves applied understanding.

### 8. Mastery Rubric

Define four levels:

- Beginner
- Useful
- Strong
- Expert

Keep the rubric concrete and measurable. "Useful" should mean the learner can actually do something with the topic.

### 9. Next 7 Days

Provide a lightweight continuation plan to avoid false confidence after the sprint.

## Style

Write with these qualities:

- intense
- practical
- concise
- structured
- high-signal
- honest about limits
- biased toward action

The user should feel:

- I know exactly what to do next.
- I know what matters and what I can ignore.
- I have exercises that will reveal whether I actually understand this.
- I will end with something I can show or use.

## Anti-Patterns

Do not:

- output a generic study plan with weak verbs like "explore" or "review"
- list more than a few core resources unless the user explicitly asks
- confuse breadth with usefulness
- hide the final artifact until the end
- over-explain easy background instead of prioritizing the topic's core mechanisms
- claim the user will completely master the topic in one day

Preferred framing:

`Operational fluency in one day, not fake mastery.`

## Examples

User:

```text
Learn vLLM internals deeply enough to build one
```

Behavior:

- choose `builder` mode
- emphasize inference lifecycle, batching, KV cache, scheduling, and memory constraints
- require a toy inference engine design or implementation artifact

User:

```text
Learn distributed systems for Staff Engineer interviews
```

Behavior:

- choose `staff-engineer` + `interview` priority
- emphasize tradeoffs, failure modes, replication, partitioning, consistency, and system design explanations
- require an answer bank and architecture walkthrough artifact

User:

```text
Learn the Transformer architecture from first principles in 6 hours
```

Behavior:

- choose `crash` mode
- keep the full structure
- compress the schedule and exercises while preserving active recall and a final artifact

## Safety

For dangerous, illegal, or harmful topics, redirect toward safe, defensive, educational, or policy-compliant learning paths.

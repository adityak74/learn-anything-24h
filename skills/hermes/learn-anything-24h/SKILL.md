---
name: learn-anything-24h
description: Turn any complex topic into a 24-hour active-learning sprint with 80/20 concept mapping, prerequisite compression, active recall, hands-on exercises, teach-back prompts, and a final artifact.
version: 1.0.0
metadata:
  hermes:
    tags: [learning, education, study-system, active-recall]
    category: education
---

# Learn Anything 24h

## When to Use

Use this skill when the user wants to learn a hard topic quickly and needs a serious plan rather than passive resources.

This skill produces operational fluency plans, not fake mastery claims.

## Invocation

- Hermes exposes installed skills as slash commands, so this skill should be available as `/learn-anything-24h`.
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

## Procedure

Build a compressed learning sprint around:

1. ruthless 80/20 prioritization
2. prerequisite compression
3. active recall
4. applied work
5. a required final artifact

Bias toward output. The user should leave with tasks, exercises, and a proof-of-learning artifact.

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

Section requirements:

- `0. Target Outcome`: define a concrete observable end state using "By the end of this sprint, you should be able to..."
- `1. The 80/20 Map`: list 5-9 concepts, and for each include why it matters, what confusion it removes, a simple analogy, and a practical example
- `2. Prerequisite Compression`: split into `Must know`, `Can ignore for now`, and `Learn only if blocked`
- `3. 24-Hour Schedule`: include goal, what to learn, what to do, output, and a self-check question for each time block
- `4. Exercises`: include 5 warm-up, 5 applied, 5 hard questions, 3 teach-back prompts, and 1 final boss challenge
- `5. Misconception Traps`: use `Wrong model:` and `Correct model:` pairs
- `6. Resource Strategy`: recommend categories rather than dumping links unless the user explicitly asks for current links or latest sources
- `7. Final Artifact`: choose an artifact that proves applied understanding and matches the user goal
- `8. Mastery Rubric`: define `Beginner`, `Useful`, `Strong`, and `Expert` concretely
- `9. Next 7 Days`: provide a lightweight continuation plan

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

For `crash` mode, compress proportionally while preserving orientation, foundations, applied work, retrieval, and final artifact.

## Pitfalls

Do not:

- output a generic study plan with weak verbs like "explore" or "review"
- list more than a few core resources unless the user explicitly asks
- confuse breadth with usefulness
- hide the final artifact until the end
- over-explain easy background instead of prioritizing the topic's core mechanisms
- claim the user will completely master the topic in one day
- generate giant reading lists, vague study advice, generic motivational language, or long link dumps

Preferred framing:

`Operational fluency in one day, not fake mastery.`

## Verification

The response should make the user feel:

- I know exactly what to do next.
- I know what matters and what I can ignore.
- I have exercises that will reveal whether I actually understand this.
- I will end with something I can show or use.

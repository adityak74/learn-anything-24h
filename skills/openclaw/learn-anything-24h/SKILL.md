---
name: learn-anything-24h
description: Turn any complex topic into a 24-hour active-learning sprint with 80/20 concept mapping, prerequisite compression, active recall, hands-on exercises, teach-back prompts, and a final artifact.
license: MIT
homepage: https://github.com/adityak74/learn-anything-24h
metadata:
  openclaw:
    homepage: https://github.com/adityak74/learn-anything-24h
---

# Learn Anything 24h

## When to use

Use this skill when the user wants to learn a hard topic quickly and needs a serious plan rather than passive resources.

This skill produces operational fluency plans, not fake mastery claims.

## Invocation

- OpenClaw exposes user-invocable skills as slash commands, so this skill should be available as `/learn-anything-24h`.
- Treat the remaining user text as the learning request.
- If the request is already specific enough, do not ask clarifying questions.

## Procedure

Assume the learner is a strong software engineer unless the user says otherwise.

Ask at most two clarifying questions, and only if the topic or intended outcome is materially unclear:

1. What is your current level: beginner, intermediate, or advanced?
2. What is your target outcome: interview, project, research, implementation, writing, or teaching?

Build a compressed learning sprint around:

1. ruthless 80/20 prioritization
2. prerequisite compression
3. active recall
4. applied work
5. a required final artifact

Infer the mode from the request:

- `default`
- `interview`
- `builder`
- `research`
- `staff-engineer`
- `paper`
- `crash`

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

Requirements:

- list 5-9 core concepts in the 80/20 map
- compress prerequisites into `Must know`, `Can ignore for now`, and `Learn only if blocked`
- include a time-boxed schedule with goal, learning task, action, output, and self-check
- include 5 warm-up, 5 applied, and 5 hard questions
- include 3 teach-back prompts and 1 final boss challenge
- choose a final artifact that proves applied understanding
- keep resources minimal unless the user explicitly asks for current links or latest recommendations

## Pitfalls

Do not:

- output giant reading lists
- give vague study advice
- confuse breadth with usefulness
- hide the final artifact until the end
- claim the user will fully master the topic in one day

Preferred framing:

`Operational fluency in one day, not fake mastery.`

## Verification

The response should leave the user with a concrete plan, concrete exercises, and a clear artifact to produce.

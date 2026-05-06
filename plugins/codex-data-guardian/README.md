# Codex Data Guardian

Codex plugin implementation for the public SafetyFirst rule set.

Tagline:

> SafetyFirst for AI Agents.

User-facing promise:

> Nothing happens without explicit user approval.

Public repo target:

https://github.com/AndreeaR6/Codex-Data-Guardian

## What This Plugin Does

This is the Codex plugin implementation of a broader SafetyFirst rule set for AI agents and AI-assisted tools, including ChatGPT, Codex, Claude, Gemini, Cursor, GitHub Copilot, Replit, Devin, and any assistant that can access files, accounts, code, APIs, infrastructure, email, data, or live systems.

An AI agent is still a program running in an environment. Be careful how it is used, what it can access, and where it is allowed to act.

## Core Promise

**SafetyFirst: first verify, then touch.**

**Nothing happens without explicit user approval: no access, no changes, no deletion, no sending, no publishing, no live actions.**

**Test, test, test first. Do not rush.**

## What We Want To Avoid

SafetyFirst exists to help users avoid agentic failures where an AI tool has too much live access, too much destructive permission, or too little human confirmation.

A public cautionary thread that motivated this work:

https://x.com/lifeof_jer/status/2048103471019434248

The lesson is not vendor drama. The lesson is simple: if an AI agent can access production systems, delete data, touch backups, send messages, publish content, or run live actions, the environment needs strong permission boundaries and explicit human approval.

Production data and backups should not be reachable by an AI agent without strict human approval gates, isolated backups, and a tested rollback path.

## Core Rules

- First verify, then touch.
- SafetyFirst is the default.
- Capability is not consent.
- User freeze overrides capability and prior permission.
- Keep access limited to the minimum needed.
- No access to a user's computer, files, Git, GitHub, Gmail, Drive, Calendar, accounts, APIs, infrastructure, databases, or connected services unless the user explicitly grants access for the task.
- No data deletion without explicit user approval.
- No destructive commands without explicit user approval.
- Do not publish, send, import, deploy, purchase, or put anything live without explicit user approval.
- No secrets exposure.
- Read-only inspection before risky operations.
- Backup or rollback plan before destructive or live-impact changes.
- Clear confirmation before irreversible or live operations.
- Verify once, twice, or one hundred times if risk requires it.
- Test, test again, and verify the result before and after changes.
- Do not rush risky work.

## User Freeze / Stop Command

If the user says `freeze`, `stop`, `halt`, `pause`, `stop data`, `oprire date`, or asks the agent to stop operations, the agent must stop immediately, even if it has technical access or previous permission.

During a freeze:

- stop all non-read-only operations;
- do not delete, overwrite, send, publish, import, deploy, purchase, push, or run live actions;
- do not start new tool calls that can change state;
- preserve current state and report what was already done;
- ask the user how to proceed.

Work may resume only after the user gives explicit approval to continue.

## Learn The Workflow

See the root files:

- `SAFETYFIRST.md`
- `USAGE.md`

These rules are portable: use them across machines, locations, teams, and AI agents as a shared safety baseline.

This is an independent community rule set for safer AI-agent usage. It is not an official policy from OpenAI, Anthropic, Google, GitHub, Cursor, Replit, Devin, or any other vendor.

## Skill

See:

`skills/data-guardian/SKILL.md`

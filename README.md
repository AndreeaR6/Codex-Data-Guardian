# SafetyTools For AI Agents

Public safety tools and rules for AI agents and AI-assisted tools.

Tagline:

> SafetyTools for AI Agents.

User-facing promise:

> Nothing happens without explicit user approval.

Core rule:

> SafetyFirst: first verify, then touch.

This is a human-led, AI-assisted public safety resource.

Public repository:

https://github.com/AndreeaR6/SafetyTools-for-AI-Agents

## What This Is

SafetyTools for AI Agents is a public safety baseline for AI agents and AI-assisted tools, including ChatGPT, Codex, Claude, Gemini, Cursor, GitHub Copilot, Replit, Devin, and any assistant that can access files, accounts, code, APIs, infrastructure, email, data, or live systems.

This repository includes a concrete Codex plugin implementation:

`plugins/safetytools-for-ai-agents`

The rules are meant for every AI agent. The plugin format included here is for Codex.

## Core Promise

**SafetyFirst: first verify, then touch.**

**Nothing happens without explicit user approval: no access, no changes, no deletion, no sending, no publishing, no live actions.**

**Non-destructive by default: prefer read-only, reversible, additive changes. No deleting, overwriting, disabling, removing, publishing, or live-impact action without explicit user approval.**

**Test, test, test first. Do not rush.**

## What We Want To Avoid

SafetyTools exists to help users avoid agentic failures where an AI tool has too much live access, too much destructive permission, or too little human confirmation.

A public cautionary thread that motivated this work:

https://x.com/lifeof_jer/status/2048103471019434248

The lesson is not vendor drama. The lesson is simple: if an AI agent can access production systems, delete data, touch backups, send messages, publish content, or run live actions, the environment needs strong permission boundaries and explicit human approval.

Production data and backups should not be reachable by an AI agent without strict human approval gates, isolated backups, and a tested rollback path.

## Core Rules

- First verify, then touch.
- SafetyFirst is the default.
- Non-destructive by default.
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

## Knowledge Base

Start here:

`SAFETYFIRST.md`

Then see:

`USAGE.md`

For Codex workspace instructions and Windows install notes, see:

`AGENTS.md`

`WINDOWS-CODEX-INSTALL.md`

These rules are portable: use them across machines, locations, teams, and AI agents as a shared safety baseline.

This is an independent community rule set for safer AI-agent usage. It is not an official policy from OpenAI, Anthropic, Google, GitHub, Cursor, Replit, Devin, or any other vendor.

## Simple KB Version For Any AI Agent

Copy the rules into your AI tool's persistent instructions:

- ChatGPT: Custom Instructions or Project Instructions.
- Claude: Project Instructions.
- Gemini: Saved info or custom instructions.
- Cursor: Rules.
- Any other agent: system rules, project rules, workspace rules, or custom instructions.

For the full version, copy the rules from `SAFETYFIRST.md`.

Basic prompt:

```text
Use SafetyTools for AI Agents.
SafetyFirst: first verify, then touch.
Nothing happens without explicit user approval:
no access, no changes, no deletion, no sending,
no publishing, no live actions.
Non-destructive by default.
If I say freeze or stop, stop all operations immediately.
Test, test, test first. Do not rush.
```

Keep the public instructions generic. Do not publish private local paths, usernames, email addresses, client names, tokens, credentials, private repository names, or internal project notes.

## Codex Plugin

The Codex plugin implementation is here:

`plugins/safetytools-for-ai-agents/`

The Codex skill is here:

`plugins/safetytools-for-ai-agents/skills/safetytools/SKILL.md`

Basic install flow:

1. On GitHub, click `Code`.
2. Choose `Download ZIP`.
3. Unzip the downloaded package.
4. Copy the folder `plugins/safetytools-for-ai-agents`.
5. Place it in the Codex plugin folder configured by your Codex app or workspace.
6. Enable the plugin from the Codex Plugins area.

Do not put a real local computer path in public documentation. Use a generic placeholder like `<your-codex-plugins-folder>` when you need an example.

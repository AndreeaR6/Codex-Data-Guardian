# How To Use AI Agents Safely

AI agents are most useful when they have clear goals, limited access, and explicit permission boundaries.

This applies to ChatGPT, Codex, Claude, Gemini, Cursor, GitHub Copilot, Replit, Devin, and any assistant that can access files, accounts, code, APIs, infrastructure, email, data, or live systems.

Use this rule:

**SafetyFirst: first verify, then touch.**

**Nothing happens without explicit user approval: no access, no changes, no deletion, no sending, no publishing, no live actions.**

**Non-destructive by default: prefer read-only, reversible, additive changes. No deleting, overwriting, disabling, removing, publishing, or live-impact action without explicit user approval.**

**Verify once, twice, or one hundred times if risk requires it. Test, test again, and verify the result.**

**Test, test, test first. Do not rush.**

**If the user says freeze or stop, stop all operations, even if access was already granted.**

## Why This Matters

Public cautionary threads about AI agents affecting production systems show the same practical lesson: do not give an agent live destructive access without strong permission boundaries, backups outside the agent's reach, and explicit human approval.

Production data and backups should not be reachable by an AI agent without strict human approval gates, isolated backups, and a tested rollback path.

Example:

https://x.com/lifeof_jer/status/2048103471019434248

Use this repository as a portable safety baseline across machines, locations, teams, and AI agents.

## Simple KB Version For Any AI Agent

Copy the rules into your AI tool's persistent instructions:

- ChatGPT: Custom Instructions or Project Instructions.
- Claude: Project Instructions.
- Gemini: Saved info or custom instructions.
- Cursor: Rules.
- Any other agent: system rules, project rules, workspace rules, or custom instructions.

For the full version, copy the rules from `SAFETYFIRST.md`.

Use this short version when you need something quick:

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

Keep it generic. Do not include private local paths, usernames, email addresses, client names, credentials, tokens, private repository names, or internal notes.

## Basic Codex Plugin Install

1. On GitHub, click `Code`.
2. Choose `Download ZIP`.
3. Unzip the downloaded package.
4. Copy the folder `plugins/safetytools-for-ai-agents`.
5. Place it in the Codex plugin folder configured by your Codex app or workspace.
6. Enable the plugin from the Codex Plugins area.

Use a placeholder like `<your-codex-plugins-folder>` in public docs. Do not publish a real local computer path.

## Good Prompts

Use prompts that ask the agent to inspect before changing anything:

```text
Review this command safely before I run it. Explain what it can change and what I should verify first.
```

```text
Inspect this project first. Do not modify files yet. Tell me what you found and what you would change.
```

```text
Make a rollback plan before touching this database/import/deploy.
```

```text
Check whether this can expose secrets, delete data, send email, publish content, or affect a live system.
```

```text
You may read the needed files for this task, but do not delete, publish, send, deploy, or overwrite anything without asking me first.
```

## Access Boundaries

Give access only when it is needed for the current task.

Good:

```text
You may inspect this repository and the files needed for this bug fix.
```

Risky:

```text
Do whatever is needed.
```

Better:

```text
First inspect the repository, summarize the planned change, and ask before editing, deleting, pushing, or publishing.
```

Best:

```text
Work non-destructively by default. Prefer read-only checks, previews, additive changes, and rollback options. Ask before deleting, overwriting, disabling, removing, publishing, or touching live systems.
```

## Before Live Actions

Ask the AI agent to pause before anything that can affect real systems:

- sending email;
- publishing a page;
- importing data;
- deleting files;
- changing a database;
- deploying code;
- pushing to GitHub;
- changing account settings;
- exposing credentials;
- making purchases.

Recommended confirmation style:

```text
I confirm this exact action: [describe the action].
```

## Freeze / Stop Prompts

Use these when you need the agent to stop immediately:

```text
Freeze. Stop all operations now.
```

```text
Stop data operations. Do not continue, even if you have access.
```

```text
Pause all writes, sends, deletes, publishes, deploys, pushes, and live actions. Report current status only.
```

## After Changes

Ask for a short verification report:

```text
Tell me what changed, where it changed, what you tested, what you did not test, and any remaining risk.
```

## Red Flags

Pause when a task includes:

- secrets or credentials;
- personal data;
- production systems;
- irreversible changes;
- unclear file targets;
- unclear user permission;
- bulk delete or overwrite operations;
- public publishing.

When in doubt:

**inspect first, ask clearly, then act only after permission.**

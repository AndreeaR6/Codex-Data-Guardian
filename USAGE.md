# How To Use Codex Safely

Codex is most useful when it has clear goals, limited access, and explicit permission boundaries.

Use this rule:

**SafetyFirst: first verify, then touch.**

**Nothing happens without explicit user approval: no access, no changes, no deletion, no sending, no publishing, no live actions.**

## Good Prompts

Use prompts that ask Codex to inspect before changing anything:

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

## Before Live Actions

Ask Codex to pause before anything that can affect real systems:

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

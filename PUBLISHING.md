# Publishing Checklist

Use this checklist before publishing SafetyTools for AI Agents anywhere public.

## SafetyTools Checks

- Confirm the package is only SafetyTools for AI Agents plus the `safetytools-for-ai-agents` Codex plugin implementation.
- Confirm no private continuity notes are included.
- Confirm no Gmail addresses, personal email addresses, client names, credentials, tokens, or secrets are included.
- Confirm there is no unrelated project data.
- Confirm repository links point to `https://github.com/AndreeaR6/SafetyTools-for-AI-Agents`.
- Confirm the public docs say the rules are for AI agents generally, while the plugin implementation is for Codex.
- Confirm the plugin says access must be limited and explicitly approved by the user.
- Confirm the plugin says nothing is deleted without explicit user approval.
- Confirm the plugin says nothing is published, sent, imported, deployed, purchased, or put live without explicit user approval.
- Confirm the plugin says user freeze or stop commands stop operations even if access was already granted.
- Confirm the docs remind users that an AI agent is a program running in an environment, so permissions and environment boundaries matter.
- Confirm the docs say production data and backups should not be reachable without strict human approval gates, isolated backups, and tested rollback.
- Confirm the docs say the rules are portable across machines, locations, teams, and AI agents.
- Confirm the docs explain the simple KB setup for ChatGPT, Claude, Gemini, Cursor, and other agents.
- Confirm the docs do not include private local paths. Use generic placeholders only.
- Confirm the docs include: "Test, test, test first. Do not rush."
- Confirm tests and read-only verification were performed before publishing.

## Before Going Live

Do not publish the repository, marketplace entry, zip file, documentation, or plugin listing until the owner gives explicit approval for that exact public target.

For GitHub setup, see:

`GITHUB_SETUP.md`

Recommended confirmation text:

```text
I confirm: publish only SafetyTools for AI Agents to the public repository AndreeaR6/SafetyTools-for-AI-Agents.
```

## After Publishing

- Open the public URL.
- Check that the README renders correctly.
- Check that only the expected files are visible.
- Check that no private data appears in the public repository.
- Check that the plugin install path and marketplace metadata are correct.

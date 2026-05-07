# Windows Codex Install

This optional installer copies the SafetyTools `AGENTS.md` rule into the current Windows user's Codex configuration folder.

Use it when you want Codex to load the SafetyFirst rule in new sessions:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\install-codex-safety-rule.ps1
```

The script writes to:

```text
C:\Users\<you>\.codex\AGENTS.md
```

If an `AGENTS.md` file already exists there, the script creates a timestamped backup before appending the SafetyTools rule, unless the rule already appears to be installed.

Safety notes:

- inspect the script before running it;
- do not add real local paths, usernames, tokens, passwords, or private project names to public documentation;
- restart Codex after install so new sessions load the instruction.

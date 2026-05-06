# GitHub Setup

Target public project:

SafetyTools for AI Agents

Public repository:

https://github.com/AndreeaR6/SafetyTools-for-AI-Agents

## Current Status

The public repository exists and must contain only SafetyTools for AI Agents:

https://github.com/AndreeaR6/SafetyTools-for-AI-Agents

Recommended repository slug:

`SafetyTools-for-AI-Agents`

Do not publish or upload private continuity files.
Do not publish private local paths, usernames, email addresses, client names, credentials, tokens, private repository names, or internal project notes.

## Safe Manual Setup

1. Create a new public repository on GitHub named:

   `SafetyTools-for-AI-Agents`

2. Keep it empty at creation time if possible:

   - no generated README;
   - no generated license;
   - no generated `.gitignore`.

3. From the local project folder, add the remote:

   ```powershell
   git remote add origin https://github.com/AndreeaR6/SafetyTools-for-AI-Agents.git
   ```

4. Verify the remote:

   ```powershell
   git remote -v
   ```

5. Push only after explicit approval:

   ```powershell
   git push -u origin main
   ```

## Before Push

Run these checks:

```powershell
git status --short --branch
git log --oneline --decorate --all
rg -n "<private-project-name>|<personal-email>|<client-name>|<credential>|<token>" .
```

Expected result:

- clean `main` branch;
- only SafetyTools for AI Agents commits;
- no private paths, email addresses, client names, credentials, tokens, or unrelated project data.

## Confirmation

Use an explicit confirmation before publishing:

```text
I confirm: publish only SafetyTools for AI Agents to the public repository AndreeaR6/SafetyTools-for-AI-Agents.
```

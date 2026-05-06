# GitHub Setup

Target public repository:

https://github.com/AndreeaR6/Codex-Data-Guardian

## Current Status

The target public repository exists:

https://github.com/AndreeaR6/Codex-Data-Guardian

Do not publish this package into another repository with a different name.

Do not publish or upload private continuity files.

## Safe Manual Setup

1. Create a new public repository on GitHub named:

   `Codex-Data-Guardian`

2. Keep it empty at creation time if possible:

   - no generated README;
   - no generated license;
   - no generated `.gitignore`.

3. From this local folder:

   `C:\Users\User1\Downloads\codex-data-guardian-public`

   add the remote:

   ```powershell
   git remote add origin https://github.com/AndreeaR6/Codex-Data-Guardian.git
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
- only Codex Data Guardian commits;
- no private terms, email addresses, client names, or unrelated project data.

## Confirmation

Use an explicit confirmation before publishing:

```text
I confirm: publish only codex-data-guardian to the public repository AndreeaR6/Codex-Data-Guardian.
```

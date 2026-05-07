$ErrorActionPreference = "Stop"

$sourceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Split-Path -Parent $sourceRoot
$homeDir = [Environment]::GetFolderPath("UserProfile")
$codexDir = Join-Path $homeDir ".codex"
$targetPath = Join-Path $codexDir "AGENTS.md"
$sourcePath = Join-Path $repoRoot "AGENTS.md"

if (-not (Test-Path -LiteralPath $sourcePath)) {
    throw "Could not find AGENTS.md at $sourcePath. Run this script from the repository's scripts folder."
}

New-Item -ItemType Directory -Force -Path $codexDir | Out-Null

if (Test-Path -LiteralPath $targetPath) {
    $current = Get-Content -LiteralPath $targetPath -Raw
    if ($current -like "*verify first, then touch*" -and $current -like "*external message or share action*") {
        Write-Host "Codex safety rule is already installed at $targetPath"
        exit 0
    }

    $stamp = Get-Date -Format "yyyyMMdd-HHmmss"
    Copy-Item -LiteralPath $targetPath -Destination "$targetPath.backup-$stamp" -Force
    Add-Content -LiteralPath $targetPath -Value ("`r`n" + (Get-Content -LiteralPath $sourcePath -Raw))
} else {
    Copy-Item -LiteralPath $sourcePath -Destination $targetPath
}

Write-Host "Installed Codex safety rule at $targetPath"
Write-Host "Restart Codex so the instruction is loaded in new sessions."

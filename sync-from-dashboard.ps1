$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot

Copy-Item (Join-Path $root "dashboard/public/skill.md") (Join-Path $PSScriptRoot "skill.md") -Force
Copy-Item (Join-Path $root "dashboard/public/bot-docs/dataset-reference.md") (Join-Path $PSScriptRoot "bot-docs/dataset-reference.md") -Force
Copy-Item (Join-Path $root "dashboard/public/bot-docs/fulltext-guide.md") (Join-Path $PSScriptRoot "bot-docs/fulltext-guide.md") -Force
Copy-Item (Join-Path $root "dashboard/public/bot-docs/tool-reference.md") (Join-Path $PSScriptRoot "bot-docs/tool-reference.md") -Force

Write-Host "Synced bot-access-github docs from dashboard/public."

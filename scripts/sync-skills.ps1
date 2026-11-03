# ========================================================
# 一键同步个人知识库技能至本地 Antigravity 全局技能目录
# ========================================================

$SourceSkillsDir = Join-Path $PSScriptRoot "..\skills"
$TargetGlobalDir = Join-Path $env:USERPROFILE ".gemini\config\skills"

if (-not (Test-Path $SourceSkillsDir)) {
    Write-Error "未找到技能源目录: $SourceSkillsDir"
    exit 1
}

if (-not (Test-Path $TargetGlobalDir)) {
    New-Item -ItemType Directory -Force -Path $TargetGlobalDir | Out-Null
}

Get-ChildItem -Path $SourceSkillsDir -Directory | ForEach-Object {
    $skillName = $_.Name
    $dest = Join-Path $TargetGlobalDir $skillName
    Write-Host "Syncing skill: [$skillName] -> $dest"
    Copy-Item -Path $_.FullName -Destination $TargetGlobalDir -Recurse -Force
}

Write-Host "=========================================================="
Write-Host "Skills sync completed successfully!"
Write-Host "=========================================================="

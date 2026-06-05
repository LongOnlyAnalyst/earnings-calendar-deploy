Set-Location "C:\earnings-repo"
git add -A
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
    git commit -m "Auto-update earnings calendar $(Get-Date -Format 'yyyy-MM-dd')"
    git push
}
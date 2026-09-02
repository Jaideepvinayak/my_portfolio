Set-Location $PSScriptRoot\..

git add .

if (git diff --cached --quiet) {
    exit 0
}

git commit -m "Auto update: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

git push
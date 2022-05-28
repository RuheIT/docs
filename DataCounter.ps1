$Files = Get-ChildItem .\docs -Include *.md -Recurse -Force 

$Files | Foreach-Object {
    $Words = Get-Content $_.PSPath | Measure-Object -Word -Line -IgnoreWhiteSpace
    $WordCount += $Words.Words
    $LineCount += $Words.Lines
}

Write-Host "Words: $WordCount"
Write-Host "Lines: $LineCount"

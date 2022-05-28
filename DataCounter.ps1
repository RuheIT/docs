$Files = Get-ChildItem .\docs -Recurse -Force 

foreach ($File in $Files) {
    $Words = Get-Content $File.PSPath | Measure-Object -Word -Line
    $WordCount += $Words.Words
    $LineCount += $Words.Lines
}

Write-Host "Words: $WordCount"
Write-Host "Lines: $LineCount"

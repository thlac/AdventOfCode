function Invoke-1B {
    param (
        [string]$Path
    )
    $frequencyHistory = @{}
    $currentFrequency = 0

    do {
        $currentFrequency = [Linq.Enumerable]::Aggregate([int[]]$(Get-Content $Path), $currentFrequency, [Func[int,int,int]] { param($total, $next); if($frequencyHistory.ContainsKey($total)) { return $total } else { $frequencyHistory.Add($total, 0); $total + $next } })
    } until ($frequencyHistory.ContainsKey($currentFrequency))
    Write-Output $currentFrequency
}
function Invoke-1A {
    param (
        [string]$Path
    )
    Write-Output $([Linq.Enumerable]::Aggregate([int[]]$(Get-Content -Path $Path), [Func[int,int,int]] { param($total, $next); $total + $next }))
}
function Invoke-AdventOfCode {
    param (
        [Parameter(Mandatory = $true)]
        [ValidateRange(1,25)]
        [string]$Day,
        [Parameter(Mandatory = $true)]
        [ValidateSet("A", "B")]
        [string]$Part,
        [Parameter(Mandatory = $true)]
        [ValidateScript({Test-Path $PSItem -PathType Leaf})]
        [string]$Path
    )
    & Invoke-$Day$Part -Path $Path
}
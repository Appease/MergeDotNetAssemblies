# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke(

[String[]]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$ILMergeParameters){
	

    $ILMergeCommand = 'ilmerge'
Write-Debug `
@"
Invoking ilmerge with: 
& $ILMergeCommand $($ILMergeParameters|Out-String)
"@
    & $ILMergeCommand $ILMergeParameters

    # handle errors
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke

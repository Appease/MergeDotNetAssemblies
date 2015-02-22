# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-CIStep(
[string][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$PoshCIProjectRootDirPath,
[string[]][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$IlMergeParameters){
    
        # invoke ilmerge.exe
        & ilmerge $IlMergeParameters

        # handle errors
        if ($LastExitCode -ne 0) {
            throw $Error
        }
}

Export-ModuleMember -Function Invoke-CIStep

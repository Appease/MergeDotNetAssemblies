# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-CIStep(
[string][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$PoshCIProjectRootDirPath,
[string[]][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$IlMergeParameters){
    
	# note: this should be in .nuspec but with current version of ilmerge package "2.12.0803" 
	# receive error "External packages cannot depend on packages that target projects."
	choco install ilmerge
	
    # invoke ilmerge.exe
    & ilmerge $IlMergeParameters

    # handle errors
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke-CIStep

# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function EnsureILMergeInstalled(){

    try{
        Get-Command ilmerge -ErrorAction Stop | Out-Null
    }
    catch{       
        Write-Debug "installing ilmerge via chocolatey"      
        choco install ilmerge | Out-Null
    }    
}

function Invoke-CIStep(

[String]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$PoshCIProjectRootDirPath,

[String[]]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$IlMergeParameters){
    
    EnsureILMergeInstalled
	

    $ilMergePath = 'ilmerge'
Write-Debug `
@"
Invoking ilmerge with: 
& $ilMergePath $($IlMergeParameters|Out-String)
"@
    & $ilMergePath $IlMergeParameters

    # handle errors
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke-CIStep

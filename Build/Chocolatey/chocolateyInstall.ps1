try {

    . "$PSScriptRoot\Posh-CI-ILMerge\Install.ps1"

    Write-ChocolateySuccess 'Posh-CI-ILMerge'

} catch {

    Write-ChocolateyFailure 'Posh-CI-ILMerge' $_.Exception.Message

    throw 
}

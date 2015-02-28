####What is it?

A [Posh-CI](https://github.com/Posh-CI/Posh-CI) step for  invoking [ilmerge.exe](http://research.microsoft.com/en-us/people/mbarnett/ILMerge.aspx)

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -ModulePackageId "Posh-CI-ILMerge"
```

####What parameters are available?

#####ILMergeParameters
an array of parameters to pass to ilmerge.exe
```PowerShell
[string[]][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName = $true)]$ILMergeParameters
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/1isgxdu1b2ajxmgb?svg=true)

####What is it?

A [PoshCI](https://github.com/PoshCI/PoshCI) step for  invoking [ilmerge.exe](http://research.microsoft.com/en-us/people/mbarnett/ILMerge.aspx)

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -PackageId "ILMerge"
```

####What parameters are available?

#####ILMergeParameters
an array of parameters to pass to ilmerge.exe
```PowerShell
[String[]]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$IlMergeParameters
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/1isgxdu1b2ajxmgb?svg=true)

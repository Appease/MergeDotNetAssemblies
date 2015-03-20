####What is it?

A [PoshDevOps](https://github.com/PoshDevOps/PoshDevOps) task for  invoking [ilmerge.exe](http://research.microsoft.com/en-us/people/mbarnett/ILMerge.aspx)

####How do I install it?

```PowerShell
Add-PoshDevOpsTask -Name "YOUR-TASK-NAME" -PackageId "ILMerge"
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
![](https://ci.appveyor.com/api/projects/status/4g5pxn3ky6y2t6xq?svg=true)

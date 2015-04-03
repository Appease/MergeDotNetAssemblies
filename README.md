![](https://ci.appveyor.com/api/projects/status/4g5pxn3ky6y2t6xq?svg=true)

####What is it?

An [Appease](http://appease.io) task template that merges .net assemblies using [ilmerge.exe](http://research.microsoft.com/en-us/people/mbarnett/ILMerge.aspx)

####How do I install it?

```PowerShell
Add-AppeaseTask `
    -DevOpName YOUR-DEVOP-NAME `
    -Name YOUR-TASK-NAME `
    -TemplateId MergeDotNetAssemblies
```

####What parameters are required?

#####ILMergeParameters
description: a `string[]` representing parameters to pass to ilmerge.exe
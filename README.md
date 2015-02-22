**What is it?**
A [Posh-CI](https://github.com/Posh-CI/Posh-CI) step for [ILMerge](http://research.microsoft.com/en-us/people/mbarnett/ILMerge.aspx)

**How do I use it?**

add an entry in your ci plans `Packages.config` file
```Xml
<packages>
  <package id="posh-ci-ilmerge" />
  <!-- other dependencies snipped -->
</packages>
```

then just pass variables to Invoke-CIPlan according to the following parameters:

#####ILMergeParameters Parameter
an array of parameters to pass to ilmerge.exe
```PowerShell
[string[]][Parameter(ValueFromPipelineByPropertyName = $true)]$ILMergeParameters
```

**What's the build Status?**
![](https://ci.appveyor.com/api/projects/status/1isgxdu1b2ajxmgb?svg=true)


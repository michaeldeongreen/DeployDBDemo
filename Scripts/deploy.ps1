param([string]$tcDir = "")

Write-Host "Arg: $tcDir"

Add-Type -Path "C:\Program Files (x86)\Microsoft SQL Server\120\DAC\bin\Microsoft.SqlServer.Dac.dll"

$dacService = new-object Microsoft.SqlServer.Dac.DacServices "server=(local)"

$dacPac = [Microsoft.SqlServer.Dac.DacPackage]::Load("$tcDir\DeployDBDemo\bin\Release\DeployDBDemo.dacpac")

$dacService.deploy($dacPac, "QA", "True") 
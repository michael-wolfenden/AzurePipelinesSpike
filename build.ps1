Param
(
    [String]$CakeVersion = "0.30.0",
    [String]$Target      = "Default",
    [String]$ToolPath    = [io.path]::combine($PSScriptRoot, "tools"),
    [String]$ToolExe     = [io.path]::combine($ToolPath, "dotnet-cake")
)

where dotnet

Write-Host "Tools path: $ToolPath" 
Write-Host "Tools exe: $ToolExe" 

dotnet tool install --tool-path "$ToolPath" Cake.Tool --version $CakeVersion
dotnet --info

& $ToolExe "--verbosity=verbose" "--target=$Target"

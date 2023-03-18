Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
invoke-Expression (&starship init powershell)
Invoke-Expression (&scoop-search-multisource.exe --hook)
Invoke-Expression (& { (lua D:\gitcodes\z.lua\z.lua --init powershell enhanced) -join "`n" })
Set-Alias "vi" "nvim"
# Import-Module DockerCompletion
# oh-my-posh init pwsh --config D:\gitcodes\autohotkey_scripts\.myposhtheme.json | Invoke-Expression
# function em {emacs -nw -Q}
# $variables = [ordered]@{
# 			POWERSHELL_CLI_TELEMETRY_OPTOUT = "1"
# 			POWERSHELL_TELEMETRY_OPTOUT     = "1"
# 			POWERSHELL_UPDATECHECK          = "Off"
# 			POWERSHELL_UPDATECHECK_OPTOUT   = "1"
# 			DOTNET_CLI_TELEMETRY_OPTOUT     = "1"
# 			DOTNET_TELEMETRY_OPTOUT         = "1"
# 			COMPlus_EnableDiagnostics       = "0"
# }
# foreach ($target in "User") {
# 	write-Host "Disable new version check." -foregroundcolor cyan
# 	foreach ($key in $variables.Keys) {
# 		# write-Host "  $key = $($variables.$Key)"
# 		[Environment]::SetEnvironmentVariable($key,$variables.$Key, $target)
# 	}
# }

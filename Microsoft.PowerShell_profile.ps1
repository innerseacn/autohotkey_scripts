oh-my-posh --init --shell pwsh --config C:\Users\inner\pyprojs\autohotkey_scripts\.myposhtheme.json | Invoke-Expression
Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"
Import-Module DockerCompletion
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
$variables = [ordered]@{
			POWERSHELL_CLI_TELEMETRY_OPTOUT = "1"
			POWERSHELL_TELEMETRY_OPTOUT     = "1"
			POWERSHELL_UPDATECHECK          = "Off"
			POWERSHELL_UPDATECHECK_OPTOUT   = "1"
			DOTNET_CLI_TELEMETRY_OPTOUT     = "1"
			DOTNET_TELEMETRY_OPTOUT         = "1"
			COMPlus_EnableDiagnostics       = "0"
}
foreach ($target in "User") {
	write-Host "Disable new version check." -foregroundcolor cyan
	foreach ($key in $variables.Keys) {
		# write-Host "  $key = $($variables.$Key)"
		[Environment]::SetEnvironmentVariable($key,$variables.$Key, $target)
	}
}

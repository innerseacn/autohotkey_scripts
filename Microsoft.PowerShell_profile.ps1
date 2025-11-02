Import-Module "$($(Get-Item $(Get-Command scoop.ps1).Path).Directory.Parent.FullName)\modules\scoop-completion"
# Import-Module PSCompletions

Set-PSReadLineKeyHandler -Key 'Ctrl+z' -Function Undo
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

$params = @{
  HistoryNoDuplicates = $true
  ShowToolTips = $true
  BellStyle = 'None'
  HistorySearchCursorMovesToEnd = $true
  # EditMode = 'Emacs'
  Colors = @{ "Selection" = "`e[7m" }
}

if ($PSEdition -eq 'Core') {
  $params.Add('PredictionSource', 'HistoryAndPlugin')
  $params.Add('PredictionViewStyle', 'ListView')
}

Set-PSReadLineOption @params

carapace _carapace | Out-String | Invoke-Expression
Invoke-Expression (&starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })
# Invoke-Expression (& { (lua D:\gitcodes\z.lua\z.lua --init powershell enhanced) -join "`n" })

Set-Alias "vi" "nvim"
Function vim($file) {nvim --clean $file}
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

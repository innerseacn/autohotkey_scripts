oh-my-posh --init --shell pwsh --config C:\Users\InnerSea\pyprojs\autohotkey_scripts\.myposhtheme.json | Invoke-Expression
Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion"
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs

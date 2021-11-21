Set-Theme Honukai
Import-Module posh-git
Import-Module oh-my-posh
Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion"
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs

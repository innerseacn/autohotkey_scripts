Set-Theme Honukai
Import-Module posh-git
Import-Module oh-my-posh
Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion"
If (-Not (Test-Path Variable:PSise)) {  # Only run this in the console and not in the ISE
	Import-Module Get-ChildItemColor
	Set-Alias l Get-ChildItem -option AllScope
	Set-Alias ls Get-ChildItemColorFormatWide -option AllScope
}

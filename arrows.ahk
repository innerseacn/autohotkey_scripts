; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases. Default now.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability. Default now.
#HotIf GetKeyState("CapsLock", "P")
n::Send "{Blind}{Down}"
p::Send "{Blind}{Up}"
h::Send "{Blind}{Left}"
l::Send "{Blind}{Right}"
,::Send "{Blind}{Home}"
.::Send "{Blind}{End}"
b::Send "{Blind}{PgUp}"
f::Send "{Blind}{PgDn}"
o::Send "{End}{Enter}"
i::Send "{Home}{Enter}{Up}"
<!u::^BS
<!k::^Del
j::!Tab
#HotIf
CapsLock::return
End::CapsLock
RAlt::RCtrl
RCtrl::RAlt
; #F2::run C:\Users\InnerSea\scoop\apps\wezterm\current\wezterm-gui.exe
; !F2::run C:\Users\InnerSea\scoop\apps\emacs\current\bin\runemacs.exe -fs
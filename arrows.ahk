#HotIf GetKeyState("CapsLock", "P")
*n::Send "{Blind}{Down}"
*p::Send "{Blind}{Up}"
*h::Send "{Blind}{Left}"
*l::Send "{Blind}{Right}"
*,::Send "{Blind}{Home}"
*.::Send "{Blind}{End}"
*!v::Send "{Blind}{PgUp}"
*v::Send "{Blind}{PgDn}"
o::Send "{End}{Enter}"
+o::Send "{Home}{Enter}{Up}"
*u::Send "{Blind}{BS}"
*k::Send "{Blind}{Del}"
+u::Send "+{Home}{Del}"
+k::Send "+{End}{Del}"
*b::Send "{Blind}^{Left}"
*f::Send "{Blind}^{Right}"
j::!Tab
#HotIf
*CapsLock::return
End::CapsLock
RAlt::RCtrl
RCtrl::RAlt
; #F2::run C:\Users\InnerSea\scoop\apps\wezterm\current\wezterm-gui.exe
; !F2::run C:\Users\InnerSea\scoop\apps\emacs\current\bin\runemacs.exe -fs
#HotIf GetKeyState("CapsLock", "P")
*n::Send "{Blind}{Down}"
*p::Send "{Blind}{Up}"
*h::Send "{Blind}{Left}"
*l::Send "{Blind}{Right}"
*,::Send "{Blind}{Home}"
*.::Send "{Blind}{End}"
*b::Send "{Blind}{PgUp}"
*f::Send "{Blind}{PgDn}"
o::Send "{End}{Enter}"
+o::Send "{Home}{Enter}{Up}"
*u::Send "{Blind}{BS}"
*k::Send "{Blind}{Del}"
j::!Tab
#HotIf
*CapsLock::return
End::CapsLock
RAlt::RCtrl
RCtrl::RAlt
; #F2::run C:\Users\InnerSea\scoop\apps\wezterm\current\wezterm-gui.exe
; !F2::run C:\Users\InnerSea\scoop\apps\emacs\current\bin\runemacs.exe -fs
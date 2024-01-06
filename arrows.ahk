; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases. Default now.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability. Default now.
End::CapsLock
CapsLock::return
CapsLock & j::Send "{Blind}{Down}"
CapsLock & k::Send "{Blind}{Up}"
CapsLock & h::Send "{Blind}{Left}"
CapsLock & l::Send "{Blind}{Right}"
CapsLock & u::Send "{Blind}{Home}"
CapsLock & p::Send "{Blind}{End}"
RAlt::RCtrl
RCtrl::RAlt
; #F2::run C:\Users\InnerSea\scoop\apps\wezterm\current\wezterm-gui.exe
; !F2::run C:\Users\InnerSea\scoop\apps\emacs\current\bin\runemacs.exe -fs
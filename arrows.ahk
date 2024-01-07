; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases. Default now.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability. Default now.
End::CapsLock
CapsLock::return
CapsLock & n::Send "{Blind}{Down}"
CapsLock & p::Send "{Blind}{Up}"
CapsLock & h::Send "{Blind}{Left}"
CapsLock & l::Send "{Blind}{Right}"
CapsLock & ,::Send "{Blind}{Home}"
CapsLock & .::Send "{Blind}{End}"
CapsLock & b::Send "{Blind}{PgUp}"
CapsLock & f::Send "{Blind}{PgDn}"
CapsLock & o::Send "{End}{Enter}"
CapsLock & i::Send "{Home}{Enter}{Up}"
RAlt::RCtrl
RCtrl::RAlt
; #F2::run C:\Users\InnerSea\scoop\apps\wezterm\current\wezterm-gui.exe
; !F2::run C:\Users\InnerSea\scoop\apps\emacs\current\bin\runemacs.exe -fs
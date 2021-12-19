#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
>!i::Send, {Up}
>!k::Send, {Down}
>!j::Send, {Left}
>!l::Send, {Right}
+>!i::Send, +{Up}
+>!k::Send, +{Down}
+>!j::Send, +{Left}
+>!l::Send, +{Right}
^>!i::Send, ^{Up}
^>!k::Send, ^{Down}
^>!j::Send, ^{Left}
^>!l::Send, ^{Right}
+^>!i::Send, +^{Up}
+^>!k::Send, +^{Down}
+^>!j::Send, +^{Left}
+^>!l::Send, +^{Right}
^<!>!i::Send, ^!{Up}
^<!>!k::Send, ^!{Down}
^<!>!j::Send, ^!{Left}
^<!>!l::Send, ^!{Right}
#F2::run C:\Users\InnerSea\scoop\apps\wezterm\current\wezterm-gui.exe
!F2::run C:\Users\InnerSea\scoop\apps\emacs\current\bin\runemacs.exe -fs
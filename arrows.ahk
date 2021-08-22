#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
!k::Send, {Up}
!j::Send, {Down}
!h::Send, {Left}
!l::Send, {Right}
+!k::Send, +{Up}
+!j::Send, +{Down}
+!h::Send, +{Left}
+!l::Send, +{Right}
^!k::Send, ^{Up}
^!j::Send, ^{Down}
^!h::Send, ^{Left}
^!l::Send, ^{Right}
+^!k::Send, +^{Up}
+^!j::Send, +^{Down}
+^!h::Send, +^{Left}
+^!l::Send, +^{Right}
#Enter::run C:\Users\InnerSea\scoop\apps\wezterm\current\wezterm-gui.exe
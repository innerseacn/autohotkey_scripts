#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #InstallKeybdHook
; #UseHook

; The following line is a contribution of NTEmacs wiki http://www49.atwiki.jp/ntemacs/pages/20.html
; SetKeyDelay 0

!u:: Send {HOME} 
!o:: Send {END}
!k:: Send {Up}
!j:: Send {Down}
!h:: Send {left}
!l:: Send {right}
!n:: Send {PgDn}
!m:: Send {PgUp}
+!u:: Send +{HOME} 
+!o:: Send +{END}
+!k:: Send +{Up}
+!j:: Send +{Down}
+!h:: Send +{left}
+!l:: Send +{right}
+!n:: Send +{PgDn}
+!m:: Send +{PgUp}
;!+,:: Send {CtrlDown}{Home}{CtrlUp}
;!+.:: Send {CtrlDown}{End}{CtrlUp}

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #InstallKeybdHook
; #UseHook

; The following line is a contribution of NTEmacs wiki http://www49.atwiki.jp/ntemacs/pages/20.html
; SetKeyDelay 0

<^a:: Send {HOME} 
<^e:: Send {END}
<^p:: Send {Up}
<^n:: Send {Down}
;<^v:: Send {PgDn}
;!v:: Send {PgUp}
;!+,:: Send {CtrlDown}{Home}{CtrlUp}
;!+.:: Send {CtrlDown}{End}{CtrlUp}

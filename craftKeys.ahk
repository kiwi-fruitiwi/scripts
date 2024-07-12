#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

winTitle = FINAL FANTASY XIV
lag = 200
buffDuration := 1500 + lag
abilityDuration := 2500 + lag

accept = {m}
left = {o}

muscleMemory = {q}
manipulation = {CtrlDown}q{CtrlUp}
basicTouch = {b}
prudentTouch = {e}
prudentSynth = {1}
groundwork = {v}

greatStrides = {CtrlDown}x{CtrlUp}
innovation = {x}
byregotsBlessing = {t}
carefulSynth = {c}
mastersMend = {CtrlDown}c{CtrlUp}
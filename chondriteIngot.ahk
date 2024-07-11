#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; from stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script
; #SingleInstance Force
; #installKeybdHook
; #Persistent
Menu, Tray, Icon, Shell32.dll, 13, 1 ; tray icon!
TrayTip, AutoHotKey, Started, 1
;SoundBeep, 300, 150
SoundPlay *16

; 31 → bottom left box
; 35 → blue screen
; 14 → globe
; 13 → chip


winTitle = FINAL FANTASY XIV
lag = 200
buffDuration := 1500 + lag
abilityDuration := 2500 + lag

accept = {Blind}{m}
left = {Blind}{o}

carefulSynth = {c}
mastersMend = {CtrlDown}c{CtrlUp}
muscleMemory = {q}
manipulation = {CtrlDown}q{CtrlUp}

greatStrides = {CtrlDown}x{CtrlUp}
innovation = {x}
byregotsBlessing = {t}


Controlsend,, %muscleMemory%, %winTitle%
Sleep %abilityDuration%

Controlsend,, %manipulation%, %winTitle%
Sleep %buffDuration%

Loop, 4 {
	Controlsend,, %carefulSynth%, %winTitle%
	Sleep %abilityDuration%
}


; final touches: great strides, innovation, byregot's blessing
Controlsend,, %manipulation%, %winTitle%
Sleep %buffDuration%
Controlsend,, %manipulation%, %winTitle%
Sleep %buffDuration%
Controlsend,, %manipulation%, %winTitle%
Sleep %buffDuration%

#y::  			
	Send, ^s 	; To save a changed script
	Sleep, 300 	; give it time to save the script
	Reload
	Return
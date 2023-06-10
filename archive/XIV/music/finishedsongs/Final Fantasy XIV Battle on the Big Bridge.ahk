#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Battle on the Big Bridge
; started 2017.11.27
; https://musescore.com/ladysamadin/scores/93753
; AdzDarkstone's 4 part arrangement https://www.youtube.com/watch?v=T5JSXEGYKl0

#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(80)

Sleep 2000

; intro ups and downs
; chromatic! EbD, DDb, DbC
; announce: FF FAbF...
; main FGAFBAGF
; 2nd » high octave
; AbGFsG x2
; announce
; undulating


Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
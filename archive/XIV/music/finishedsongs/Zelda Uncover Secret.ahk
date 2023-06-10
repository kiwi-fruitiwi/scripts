#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Zelda Uncover Secret Sound Effect
; http://www.ninsheetmusic.org/download/pdf/1642


#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(160)

Sleep 2000

highg(8)
highfsharp(8)
highdsharp(8)
mida(8)
midgsharp(8)
highe(8)
highgsharp(8)
highhighc(8)


Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
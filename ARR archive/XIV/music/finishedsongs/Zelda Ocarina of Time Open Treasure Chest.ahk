#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Zelda Ocarina of Time: Open Treasure Chest Sound Effect
; http://www.ninsheetmusic.org/download/pdf/1464


#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(110)

Sleep 5000


Loop, 2
{
	midg(8)
	mida(8)
	midb(8)
	highcsharp(8)
}

bpm(120)
Loop, 2
{
	midaflat(8)
	midbflat(8)
	highc(8)
	highd(8)
}

bpm(135)
Loop, 2
{
	mida(8)
	midb(8)
	highcsharp(8)
	highdsharp(8)
}

bpm(145)
Loop, 2
{
	midasharp(8)
	highc(8)
	highd(8)
	highe(8)
}

bpm(155)

midb(8)
highcsharp(8)
highdsharp(8)
highf(8)


bpm(160)

highc(8)
highd(8)
highe(8)
highfsharp(8)

highcsharp(8)
highdsharp(8)
highf(8)
highg(8)

highd(8)
highe(8)
highfsharp(8)
highgsharp(8)

rest(1)

mida(8, 100)
midbflat(8, 120)
midb(8, 160)
highc(8)

Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
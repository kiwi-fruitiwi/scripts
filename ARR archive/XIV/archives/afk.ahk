#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include C:\Dropbox\ahk scripts\XIV\keybinds.ahk

; this script was created on 2015.06.19 for heavensward

Loop,
{
	Controlsend,, {F12}, %winTitle%
	Sleep 100000
}

#z::Reload
#c:: 
	Controlsend,, {F12}, %winTitle%
	Pause
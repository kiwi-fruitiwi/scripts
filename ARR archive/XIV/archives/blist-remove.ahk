#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; removes your entire blist in ffxiv:arr
; you need to have your blist window open and first name selected

#Include C:\Dropbox\ahk scripts\XIV\keybinds.ahk

InputBox, UserInput, Quantity, How many entries are in your blacklist?
Loop, %UserInput%
{	
	Controlsend,, %accept%, %winTitle%
	Sleep 500

	Controlsend,, %accept%, %winTitle%
	Sleep 700

	Controlsend,, O, %winTitle%
	Sleep 500

	Controlsend,, %accept%, %winTitle%
	Sleep 500
}


#z::Reload
#c:: 
	Controlsend,, {F12}, %winTitle%
	Pause
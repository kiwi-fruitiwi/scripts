#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\XIV\keybinds.ahk

InputBox, UserInput, Quantity, Spam Accept for Fish Turnins
Loop, %UserInput%
{
	; start the craft by pressing accept 4 times quickly
		Loop, 14
		{
			Controlsend,, %accept%, %winTitle%
			Sleep 1000
		}

	; extra sleep for lag. not sure
	Sleep 2000
}

#z::Reload
#c:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include C:\Dropbox\ahk scripts\keybinds.ahk

InputBox, UserInput, Quantity, # one CS2
Loop, %UserInput%
{
	; start the craft by pressing accept 4 times quickly
		Loop, 4 
		{
			Controlsend,, %accept%, %winTitle%
			Sleep 400
		}

	; wait for synthesis dialog to pop up
		Sleep %sleep_ability%

	; careful synthesis II
		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

	; update screenshot to dropbox using a snagit hotkey
		Send %end_of_synth_screenshot%

	Sleep 3000 + lag
}


Loop ,
{
	Sleep 15000
	; Send %end_of_synth_screenshot%
}


#z::Reload
#x:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
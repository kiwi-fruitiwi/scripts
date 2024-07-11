#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Users\kiwi\Dropbox\scripts\archive\XIV\keybinds.ahk

InputBox, UserInput, Quantity, 2x CS3
Loop, %UserInput%
{
	; start the craft by pressing accept 4 times quickly
		Loop, 4 
		{
			Controlsend,, %accept%, %winTitle%
			Sleep 400
		}

	; wait for synthesis dialog to pop up
	Sleep 1000

	Controlsend,, %careful_synthesis_3%, %winTitle%
	Sleep %sleep_ability%

	Controlsend,, %careful_synthesis_3%, %winTitle%
	Sleep %sleep_ability%

	; extra sleep for lag. not sure
	Sleep 2000
}

#z::Reload
#c:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
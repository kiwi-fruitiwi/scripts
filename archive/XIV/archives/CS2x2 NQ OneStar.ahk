#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include E:\Dropbox\ahk scripts\keybinds.ahk

InputBox, UserInput, Quantity, NQ 1* 40 dura 2x CS2
Loop, %UserInput%		
{
	; start the craft by pressing accept 3 times quickly
		Loop, 3 
		{
			Controlsend,, %accept%, %winTitle%
			Sleep 400
		}

	; wait for synthesis dialog to pop up
		Sleep %sleep_ability%


	; Careful Synth II, Careful Synth II
	
		Loop, 2 {
			Controlsend,, %careful_synthesis_2%, %winTitle%
			Sleep %sleep_ability%

		}

	; update screenshot to dropbox using a snagit hotkey
		Send %end_of_synth_screenshot%

	Sleep 4500
}


; the macro has finished. now update the screenshot every 15 seconds
Loop ,
{
	Sleep 15000
	; Send %end_of_synth_screenshot%
}


#z::Reload
#x:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
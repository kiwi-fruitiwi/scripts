#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include E:\Dropbox\ahk scripts\keybinds.ahk

InputBox, UserInput, Quantity, custom

Controlsend,, %accept%, %winTitle%
Sleep 400

Loop, %UserInput%
{
	; start the craft by pressing accept 3 times quickly
		Loop, 3 
		{
			Controlsend,, %accept%, %winTitle%
			Sleep 400
		}

	; wait for synthesis dialog to pop up
		Sleep %sleep_buff%

	; custom rotation
		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %basic_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %basic_touch%, %winTitle%
		Sleep %sleep_ability%
		
		Controlsend,, %basic_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %masters_mend%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 2
		{
			Controlsend,, %basic_synthesis%, %winTitle%
			Sleep %sleep_ability%
		}



		Sleep 2500
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
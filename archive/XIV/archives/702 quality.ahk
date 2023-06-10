#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include E:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2014.11.04 to work with the following stats:
; 	basic melded crafting AF + overmelded accs


InputBox, UserInput, Quantity, 702 quality

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
		Sleep %sleep_ability%

	; IQ, SH, AT, GS, AT
		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %advanced_touch%, %winTitle%
		Sleep %sleep_ability%
	
		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %advanced_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

	; extra sleep for lag. not sure
		Sleep 4500

	; extra sleep for lag. not sure
		Sleep 4500
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
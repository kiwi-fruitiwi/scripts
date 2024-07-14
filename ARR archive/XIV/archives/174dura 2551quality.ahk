#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include C:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2013.01.30 to work with the following stats:
; 	315 craftsmanship
;	315 control
; 	no extra cp
;	this one usually clears quality really well but 174 is the max dura


InputBox, UserInput, Quantity, 174dura 2551quality

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

	; CZ, IQ, WN, SH2, BTx5
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %waste_not%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 5
		{
			Controlsend,, %basic_touch%, %winTitle%
			Sleep %sleep_ability%
		}


	; GS, SH, AT
		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %advanced_touch%, %winTitle%
		Sleep %sleep_ability%


	; GS, Byregot, CS2x2 
		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%

		Loop, 2
		{
			Controlsend,, %careful_synthesis_2%, %winTitle%
			Sleep %sleep_ability%
		}

	; extra sleep for lag. not sure
		Sleep 4500
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2015.07.01 to work on Cedar Lumber and doesn't gaurantee HQ by a long shot. 366 craftsmanship, 343 control, 371cp with some left over

InputBox, UserInput, Quantity, Remember your pea soup!`nAre you sure two Careful Synth IIs will finish this synth?
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

	; part one: CZ, IQ, WN, SH2, 5xHT
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %waste_not%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 4 
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%
		}

	; part two: manipulation, SH2, WN, 4xHT
		Controlsend,, %manipulation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %waste_not%, %winTitle%
		Sleep %sleep_buff%

		Loop, 3 
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

	; should start with 112 CP at this phase. we need 110 CP
	; SH, ingenuity 2, great strides, byregot, CS2
		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

	; extra sleep for lag. not sure
		Sleep 4000
}

#z::Reload
#x:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
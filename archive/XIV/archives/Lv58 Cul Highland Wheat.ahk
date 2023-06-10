#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\keybinds.ahk

; created on 2015.09.30 to work on Highland Wheat as a Level 58 Cul. Removed Ingenuity II at the end and replaced with two basic touches.

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

		Controlsend,, %innovation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %basic_touch%, %winTitle%
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
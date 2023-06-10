#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\XIV\keybinds.ahk

; CZ IQ SH2 MNP 
; CS2 BT BT ST
; SH2 IG2 Inno
; Standard Touch GS BB CS2

InputBox, UserInput, Quantity, Lv.63 Popoto Soup`n431 CP Max with Tempura`nRequires 429 CP`n Ends at 15/80 durability.
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

	; part one
		Controlsend,, %muscle_memory%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%


	; part two
		Loop, 5
		{
			Controlsend,, %prudent_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %manipulation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 4
		{
			Controlsend,, %prudent_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %tricks_of_the_trade%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregots_blessing%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_3%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_3%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

	; extra sleep for lag. not sure
		Sleep 4000
}

#z::Reload
#c:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\XIV\keybinds.ahk

; CZ IQ SH2 MNP 
; CS2 BT BT ST
; SH2 IG2 Inno
; Standard Touch GS BB CS2

InputBox, UserInput, Quantity, 40 Durability 8 Prudent Touch 2 CSIII`nRequires 402 CP`n
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

	; part one: CZ IQ SH2
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%


	; part two: PT
		Loop, 5
		{
			Controlsend,, %prudent_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %manipulation%, %winTitle%
		Sleep %sleep_buff%


		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 3
		{
			Controlsend,, %prudent_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregots_blessing%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_3%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_3%, %winTitle%
		Sleep %sleep_ability%

	; extra sleep for lag. not sure
		Sleep 4000
}

#z::Reload
#c:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
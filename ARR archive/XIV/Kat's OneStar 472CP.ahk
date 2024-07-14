#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include D:\Dropbox\scripts\XIV\keybinds.ahk

; CZ IQ SH2 MNP 
; CS2 BT BT ST
; SH2 IG2 Inno
; Standard Touch GS BB CS2

InputBox, UserInput, Quantity, Kat's 1 Star RNG`nRequires 472 CP`n
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

	; part one: MM CZ IQ M2 SH2
		Controlsend,, %muscle_memory%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %manipulation_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%


	; part two: 2 Patient, 3 Prudent » SH2, CZ, 3 Prudent
		Loop, 2
		{
			Controlsend,, %patient_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Loop, 3
		{
			Controlsend,, %prudent_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Loop, 3
		{
			Controlsend,, %prudent_touch%, %winTitle%
			Sleep %sleep_ability%
		}

	; part three:

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %piece_by_piece%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %innovation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregots_blessing%, %winTitle%
		Sleep %sleep_ability%

		Loop, 3
		{
			Controlsend,, %observe%, %winTitle%
			Sleep %sleep_ability%

			Controlsend,, %focused_synthesis%, %winTitle%
			Sleep %sleep_ability%
		}
		
	; extra sleep for lag. not sure
		Sleep 4000


}

#z::Reload
#c:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
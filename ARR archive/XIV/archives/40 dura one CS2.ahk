#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\XIV\keybinds.ahk

Menu, Tray, Icon, 2.ico 

; CZ IQ SH2 MNP 
; CS2 BT BT ST
; SH2 IG2 Inno
; Standard Touch GS BB CS2

InputBox, UserInput, Quantity, 40 Durability One CSII under Ingenuity II`nPrecise Touch x4`nHome stretch with double Great Strides!`nRequires 403 CP. Extra Steady Hand needed to cover the Byregot at the end.
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

	; part one: CZ IQ CS2 SH2 MNP
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %manipulation%, %winTitle%
		Sleep %sleep_buff%


	; part two: BT BT ST
		Loop, 4
		{
			Controlsend,, %precise_touch%, %winTitle%
			Sleep 500

			Controlsend,, %basic_touch%, %winTitle%
			Sleep %sleep_ability%+500
		}

	; home stretch 208 CP
	; SH.22 IG2.32 GS!.32 Inno.18 AT.48 GS.32 BB.24
	; CS2

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %innovation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %standard_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregots_blessing%, %winTitle%
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
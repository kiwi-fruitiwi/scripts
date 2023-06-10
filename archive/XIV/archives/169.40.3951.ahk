#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\XIV archives\keybinds.ahk


; CZ IQ SH2 MNP 
; CS2 BT BT ST
; SH2 IG2 Inno
; Standard Touch GS BB CS2

InputBox, UserInput, Quantity, 40 Durability Low Level - One CS2`nStone Soup`nPrecise Touch²`nLv.54 Main Hand
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

;		Controlsend,, %standard_synthesis%, %winTitle%
;		Controlsend,, %careful_synthesis_2%, %winTitle%
		
		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %manipulation%, %winTitle%
		Sleep %sleep_buff%


	; part two: BT BT ST
;		Controlsend,, %hasty_touch%, %winTitle%
;		Sleep %sleep_ability%

		Loop, 2
		{
			Controlsend,, %precise_touch%, %winTitle%
			Sleep 500

			Controlsend,, %basic_touch%, %winTitle%
			Sleep %sleep_ability%+500
		}

		Controlsend,, %precise_touch%, %winTitle%
		Sleep 500

		Controlsend,, %standard_touch%, %winTitle%
		Sleep %sleep_ability%+500


	; part three: SH2 IG2 Inno
		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %innovation%, %winTitle%
		Sleep %sleep_buff%

	; 125 cp left!
	; part four: AT GS BB CS2
		Controlsend,, %advanced_touch%, %winTitle%
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
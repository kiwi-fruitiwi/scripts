#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; CZ, IQ, WN2, SH2, HT, BTx4, SH2
; ING2, Inno, HT, GS, Byregot
; ING2, CS2x4

; From what I read: 2 star 40 dura mats
; Comfort Zone -> Inner Quiet -> Steady 2 -> Waste Not 2 -> Hasty Touch x4 -> Steady 2 -> Hasty Touch x3 -> Manipulation -> Steady 2 (reclaim here, if you think you failed Hasty too many times) -> Ingenuity 2 -> Great Strides -> Innovation -> Byregot -> Careful 2 x2
; This is with at least 385 CP I think. And getting chances on your side if you use HQ mats (HQ hippogryph leather etc).

#Include E:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2014.03.29 to work with the following stats:
; 	353 craftsmanship
;	327 control
; 	380 CP exactly


; CZ, IQ, WN2, SH2, HT, BTx4, SH2
; ING2, Inno, BT, GS, Byregot
; ING2, CS2x4


InputBox, UserInput, Quantity, Do you have 388 CP from HQ Bou? make sure you have WASTE NOT II on your bar in position numpad.4 and innovation in T!
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

	; CZ, IQ, WN2, SH2, HT, BTx4, SH2
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %waste_not%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Loop, 4
		{
			Controlsend,, %basic_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%


	; ING2, Inno, BT, GS, Byregot
		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %innovation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %basic_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%



	; ING2, CS2x4
		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 4
		{
			Controlsend,, %careful_synthesis_2%, %winTitle%
			Sleep %sleep_ability%
		}


	; update screenshot to dropbox using a snagit hotkey
	; Send %end_of_synth_screenshot%

	; extra sleep for lag. not sure
		Sleep 4500
}


; the macro has finished. now update the screenshot every 15 seconds
Controlsend,, {F12}, %winTitle%
Loop ,
{
	Sleep 15000
	; Send %end_of_synth_screenshot%
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
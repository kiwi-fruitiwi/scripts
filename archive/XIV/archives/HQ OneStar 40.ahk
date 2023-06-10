#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include E:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2013.11.18 to work with the following stats:
; 	364cp. 366cp after 21cp pea soup buff in fully melded gear
;	
;	HQ in 21 steps:
;	
;	CZ, IQ, WN, SH2, 5xHT
;	manipulation, SH2, WN, 4xHT
;	SH, ING2, GS, byregot, CS2



InputBox, UserInput, Quantity, # HQ 1* 40 dura`nRequires 364 CP. Pea Soup!
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

		Loop, 5 
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

		Loop, 4 
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%
		}

	; should start with 112 CP at this phase. we need 110 CP
	; SH, ingenuity 2, great strides, byregot, CS2
		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

	; extra sleep for lag. not sure
		Sleep 4000
}


; the macro has finished. now update the screenshot every 15 seconds
Loop ,
{
	Sleep 15000
	Send %end_of_synth_screenshot%
}



#z::Reload
#x:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
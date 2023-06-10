#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; the 100% HQ 0 RNG 2 Star Rotation from http://goo.gl/pqWi1k
; CZ, IQ, CS2, WN, SH2, BTx5
; GS, SH, ING2, AT
; GS, byregot, CS2x2

#Include E:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2013.12.12 to work with the following stats:
; 	348 craftsmanship
;	327 control
; 	365 CP exactly. with melded gear at 345cp, we'll need a cp boost
;	pea soup's 21 CP boost will give us 1 more than required
;	
;	NOTE: with 327 control and no good conditions on touches, we will achieve 96%


InputBox, UserInput, Quantity, Do you have 365CP for this two star rotation?
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

	; CZ, IQ, CS2, WN, SH2, BTx5
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %waste_not%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 5
		{
			Controlsend,, %basic_touch%, %winTitle%
			Sleep %sleep_ability%
		}


	; GS, SH, ING2, AT
		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
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


	; update screenshot to dropbox using a snagit hotkey
		Send %end_of_synth_screenshot%

	; extra sleep for lag. not sure
		Sleep 4500
}


; the macro has finished. now update the screenshot every 15 seconds
Controlsend,, {F12}, %winTitle%
Loop ,
{
	Sleep 15000
	Send %end_of_synth_screenshot%
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
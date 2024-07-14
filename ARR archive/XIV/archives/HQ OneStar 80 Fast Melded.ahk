#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; modified one-star rotation that leaves 13 CP (with stone soup!) and 10 dura
; my full melded gear will only give 345 CP, while this needs 349
; standard instead of advanced, no CS2 start
; CZ, IQ, WN, SH2, BTx5
; GS, SH, ING2, ST
; GS, byregot, CS2x2

#Include E:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2013.11.16 to work with the following stats:
; 	348 craftsmanship
;	327 control
; 	349 CP exactly. with melded gear at 345cp, we'll need a cp boost
;	stone soup will give 13cp more than required


InputBox, UserInput, Quantity, =MELDED GEAR!= Fast HQ 80 Dura One Star`nRequirements:`n348 craftsmanship`n327 control`n349 CP
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

	; CZ, IQ, WN, SH2, BTx5
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
			Controlsend,, %basic_touch%, %winTitle%
			Sleep %sleep_ability%
		}


	; GS, SH, ING2, ST
		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %standard_touch%, %winTitle%
		Sleep %sleep_ability%


	; GS, Byregot, CS2x3 
		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%

		Loop, 3
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
	; Send %end_of_synth_screenshot%
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
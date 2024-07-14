#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\XIV\keybinds.ahk
Menu, Tray, Icon, hard.ico

; 842 total. 
; 384, 307 with Ingenuity II. 
; 256, 205 without for CSIII and CSII
; 277 muscle memory but costs CP

InputBox, UserInput, Quantity, 40 Durability Multiple CSIII`nHasty Touch x5`nNeed Byregot's Brow on 7 and CSIII on 6`nRequires 401 CP
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

	; part one: setup
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %manipulation%, %winTitle%
		Sleep %sleep_buff%


	; part two: touch loop
		Loop, 4
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%+500
		}

		; down to 20 durability

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %manipulation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%+500

	; home stretch

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %basic_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregots_brow%, %winTitle%
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
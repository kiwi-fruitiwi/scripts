#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include C:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2015.07.01 to work on Cedar Lumber and doesn't gaurantee HQ by a long shot. 366 craftsmanship, 343 control, 371cp with some left over

InputBox, UserInput, Quantity, Remember your pea soup!`n80 durability!
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

		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 5
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		; now 30/80 dura
		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %masters_mend_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		; 60/80 dura, 107 CP as 53 culinarian
		

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %innovation%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%
		Controlsend,, %careful_synthesis_2%, %winTitle%
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
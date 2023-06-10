#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include C:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2013.01.27 to work with the following stats:
; 	315 craftsmanship
;	315 control
; 	no extra cp


InputBox, UserInput, Quantity, 2309 quality

Controlsend,, %accept%, %winTitle%
Sleep 400

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


		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %waste_not%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 5
		{
			Controlsend,, %advanced_touch%, %winTitle%
			Sleep %sleep_ability%
		}

		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%


	; extra sleep for lag. not sure
		Sleep 2500
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
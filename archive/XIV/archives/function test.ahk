#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include E:\Dropbox\ahk scripts\keybinds.ahk



precise_basic_touch()
{	
	Controlsend,, %precise_touch%, %winTitle%
	Sleep 500

	Controlsend,, %basic_touch%, %winTitle%
	Sleep %sleep_ability% + 500
}

InputBox, UserInput, Quantity, Just testing functions!
Loop, %UserInput%
{
	precise_basic_touch()
	Controlsend,, %precise_touch%, %winTitle%
	Sleep 500

}

#z::Reload
#x:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
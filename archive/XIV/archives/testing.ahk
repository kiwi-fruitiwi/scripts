#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include E:\Dropbox\ahk scripts\keybinds.ahk

; this script was created on 2015.07.01 to work on Mythrite Nugget at level 51 and doesn't gaurantee HQ by a long shot. 366 craftsmanship, 343 control, 366cp with some left over

; CZ IQ SH2 MNP 
; CS2 BT BT ST
; SH2 IG2 Inno
; Standard Touch GS BB CS2

InputBox, UserInput, Quantity, It's mythrite nugget time! Make sure you're level 51.`nRequires 366 CP. Pea Soup!
Loop, %UserInput%
{
	Controlsend,, %innovation%, %winTitle%
	Sleep %sleep_buff%
}

#z::Reload
#x:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
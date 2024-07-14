#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;msgBox % A_AhkVersion
;when you don't have replace immediately flagged (*) you need an extra backspace {bs +1}


; spear of adun abilities are at y=45, x=805, 870, 1045, and 1115

/*
+8::
	MouseGetPos, StartX, StartY
	Click, 805, 45
	MouseMove, StartX, StartY
Return

+9::
	MouseGetPos, StartX, StartY
	Click, 870, 45
	MouseMove, StartX, StartY
Return

+0::
	MouseGetPos, StartX, StartY
	Click, 1045, 45
	MouseMove, StartX, StartY
Return

+-::
	MouseGetPos, StartX, StartY
	Click, 1115, 45
	MouseMove, StartX, StartY
Return
*/

+0::
	MouseGetPos, StartX, StartY
	Click, 805, 45
	MouseMove, StartX, StartY
Return
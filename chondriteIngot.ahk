#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; from stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script
; #SingleInstance Force
; #installKeybdHook
; #Persistent
Menu, Tray, Icon, Shell32.dll, 13, 1 ; tray icon!
TrayTip, AutoHotKey, Started, 1
;SoundBeep, 300, 150
SoundPlay *16

; 31 → bottom left box
; 35 → blue screen
; 14 → globe
; 13 → chip


#Include C:\Users\kiwi\Dropbox\scripts\craftKeys.ahk


InputBox, UserInput, iterations, craft → 40 durability chondrite ingot, , 300, 128
Loop, %UserInput%
{
	; start the craft by pressing accept 4 times quickly
	Loop, 4 
	{
		Controlsend,, %accept%, %winTitle%
		Sleep 400
	}

	; wait for synthesis dialog to pop up
	Sleep 1000

	Controlsend,, %muscleMemory%, %winTitle%
	Sleep %abilityDuration%

	Controlsend,, %manipulation%, %winTitle%
	Sleep %buffDuration%

	Controlsend,, %basicTouch%, %winTitle%
	Sleep %abilityDuration%

	Loop, 9 {
	    Controlsend,, %prudentTouch%, %winTitle%
	    Sleep %abilityDuration%
	}

	; final touches: great strides, innovation, byregot's blessing
	Controlsend,, %greatStrides%, %winTitle%
	Sleep %buffDuration%

	Controlsend,, %innovation%, %winTitle%
	Sleep %buffDuration%

	Controlsend,, %byregotsBlessing%, %winTitle%
	Sleep abilityDuration

	; final careful synth
	Controlsend,, %carefulSynth%, %winTitle%
	Sleep abilityDuration

	; sleep at the end of the synth to allow time for the menu to load
	Sleep 2000
}

#y::              
    Send, ^s     ; To save a changed script
    Sleep, 300     ; give it time to save the script
    Reload
    Return

;#z::Reload
;#c:: 
;	Controlsend,, %stop_macro%, %winTitle%
;	Pause
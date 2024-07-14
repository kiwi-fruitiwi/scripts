#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Final Fantasy Prelude
; https://www.reddit.com/r/ffxiv/wiki/perform#wiki_ff_prelude


#Include D:\Dropbox\ahk scripts\XIV\music\perform-keybinds.ahk

bpm := 150
whole := 240000 / bpm
half := 120000 / bpm
quarter := 60000 / bpm
eighth := 30000 / bpm
sixteenth := 15000 / bpm

InputBox, UserInput, Quantity, Testing! Ready?

Loop, %UserInput%
{
	high_f_sharp(8)
	high_g_flat(8)
	high_a_sharp(8)
	high_g_flat(8)
	high_f_sharp(8)
	high_a_sharp(8)
	high_g_flat(8)
	high_f_sharp(8)
	high_a_sharp(8)
	high_g_flat(8)
}

Controlsend,, %stop_macro%, %winTitle%

#z::Reload
#c:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
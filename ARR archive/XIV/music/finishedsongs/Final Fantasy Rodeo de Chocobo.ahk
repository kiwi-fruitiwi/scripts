#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Final Fantasy Rodeo de Chocobo
; https://musescore.com/user/7698821/scores/1991696


#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(150)

Sleep 2000

p1()
p1()
p2()
p3()

p1()
{
	highd(4)
	midb(8)
	midg(8)
	mide(8)
	highd(8)
	midb(8)
	midg(8)
	
	midb(4)
	midg(4)
	midb(4)
	rest(8)
	mida(8)

	midg(8)
	; midg(16)
	mida(8)
	midg(8)
	midf(8)
	midg(8)
	rest(8)
	rest(4)

	midg(8)
	;midg(16)
	midb(8)
	highd(8)
	highe(8)
	highf(2)
}

p2a() 
{
	highe(4)
	highc(8)
	mida(8)
	midfsharp(8)
	mida(8)
	highc(8)
	highe(8)

	highd(4)
	highg(4)
	highd(4)
	rest(8)
	midb(8)
}

p2()
{
	p2a()

	highc(4)
	mida(8)
	midfsharp(8)
	midd(8)
	midfsharp(8)
	mida(8)
	highc(8)

	midb(8)
	; midb(16)
	highc(8)
	midb(8)
	mida(8)
	midb(4)
	highc(8)
	highd(8)

}

p3()
{
	p2a()

	mida(8)
	;mida(16)
	midb(8)
	mida(8)
	midg(8)
	mida(4)
	rest(8)
	midg(8)

	mida(8)
	; mida(16)
	midb(8)
	highc(8)
	highd(8)
	highe(4)
	highfsharp(4)

	highg(1)
}

Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Lost in Thoughts All Alone
; https://musescore.com/user/8140221/scores/2769276

#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

Sleep 2000

bpm(125)

intro()
p1()
p2()
p3()
p2()
p4()

intro()
{
	Loop, 4
	{
		lowd(8)
		lowa(8)
		mide(8)
		midf(8)
		rest(4)
	}
}

p1()
{
	; 5
	mida(2)
	midg(8)
	highc(8)
	
	mida(2)
	midg(8)
	highc(8)

	mida(2)
	rest(4)

	; 8
	midg(4)
	midf(4)
	mide(4)

	midd(2)
	midc(8)
	midg(8)

	midd(2)
	midc(4)

	midd(4)
	rest(4)
	mida(8)
	midg(8)

	mida(2)
	rest(4)

	; 13
	mida(2)
	midg(8)
	highc(8)
	
	mida(2)
	midg(8)
	highc(8)

	mida(2)
	rest(4)

	; 16
	midg(4)
	midf(4)
	mide(4)

	midd(2)
	midc(8)
	midg(8)

	midd(2)
	midc(8)
	mida(8)

	; 19
	midd(1)
}

p2()
{
	; 20
	rest(2)
	mida(4)

	highd(4)
	rest(8)
	highc(4)
	rest(8)

	mida(2)
	rest(4)

	rest(2)
	mida(8)
	midb(8)

	highc(4)
	rest(8)
	midb(4)
	rest(8)

	midg(2)
	rest(4)

	rest(2)
	midg(8)
	mida(8)

	; 27
	midbflat(4)
	rest(8)
	mida(4)
	rest(8)

	midf(4)
	midg(4)
	mide(4)

	midd(8)
	mide(8)
	midd(4)
	rest(8)
	midc(8)

	midd(8)
	mide(8)
	midd(4)
	rest(8)
	midc(8)

	midd(8)
	mide(8)
	midd(4)
	rest(8)
	midc(8)	

	; 32
	midd(8)
	mida(8)
	mida(4)
	midg(4)

	mida(2)
	rest(8)

	rest(2)
	rest(4)
}

; one octave higher than p1
p3()
{
	; 5
	higha(2)
	highg(8)
	highhighc(8)
	
	higha(2)
	highg(8)
	highhighc(8)

	higha(2)
	rest(4)

	; 8
	highg(4)
	highf(4)
	highe(4)

	highd(2)
	highc(8)
	highg(8)

	highd(2)
	highc(4)

	highd(4)
	rest(4)
	higha(8)
	highg(8)

	higha(2)
	rest(4)

	; 13
	higha(2)
	highg(8)
	highhighc(8)
	
	higha(2)
	highg(8)
	highhighc(8)

	higha(2)
	rest(4)

	; 16
	highg(4)
	highf(4)
	highe(4)

	highd(2)
	highc(8)
	highg(8)

	highd(2)
	highc(8)
	higha(8)

	; 19
	highd(1)
}

; shifted p1
p4()
{
	; 105
	midb(2)
	mida(8)
	highd(8)

	midb(2)
	mida(8)
	highd(8)

	; 107
	midb(2)
	rest(4)

	mida(4)
	midg(4)
	midfsharp(4)

	mide(2)
	midd(8)
	mida(8)

	mide(2)
	midd(4)

	mide(4)
	rest(8)
	midd(8)
	midb(8)
	mida(8)

	midb(2)
	rest(4)

	; 113
	midb(2)
	mida(8)
	highd(8)

	midb(2)
	mida(8)
	highd(8)

	; 107
	midb(2)
	rest(4)

	mida(4)
	midg(4)
	midfsharp(4)

	mide(2)
	midd(8)
	mida(8)

	mide(2)
	midd(8)
	midb(8)

	mide(1)
}

; fancy p1 with left hand added for an experiment
p5()
{
	
}

Controlsend,, %stopMacro%, %winTitle%
ExitApp
#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
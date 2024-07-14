#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Final Fantasy Prelude
; https://www.reddit.com/r/ffxiv/wiki/perform#wikiffprelude


#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(150)

Sleep 2000

Loop, 2
{
	Loop, 2
	{
		p1()
		p2()
	}
	
	p3()
	p4()
	p5()
	p6()
}

p1()
{
	; 1
	lowa(8)
	midc(8)
	midf(8)
	midg(8)
	mida(8)
	highc(8)
	highf(8)
	highg(8)
	higha(8)
	highg(8)
	highf(8)
	highc(8)
	mida(8)
	midg(8)
	midf(8)
	midc(8)
}

p2()
{
	lowf(8)
	lowa(8)
	midd(8)
	mide(8)
	midf(8)
	mida(8)
	highd(8)
	highe(8)
	highf(8)
	highe(8)
	highd(8)
	mida(8)
	midf(8)
	mide(8)
	midd(8)
	lowa(8)
	;lowf(8)
}

p3()
{
	lowd(8)
	lowf(8)
	lowbflat(8)
	midc(8)
	midd(8)
	midf(8)
	midbflat(8)
	highc(8)
	highd(8)
	highc(8)
	midbflat(8)
	midf(8)
	midd(8)
	midc(8)
	lowbflat(8)
	lowf(8)
}

p4()
{
	lowe(8)
	lowg(8)
	midc(8)
	midd(8)
	mide(8)
	midg(8)
	highc(8)
	highd(8)
	highe(8)
	highd(8)
	highc(8)
	midg(8)
	mide(8)
	midd(8)
	midc(8)
	lowg(8)
}

p5()
{
	lowcsharp(8)
	lowf(8)
	lowgsharp(8)
	midc(8)
	midcsharp(8)
	midf(8)
	midgsharp(8)
	highc(8)
	highcsharp(8)
	highc(8)
	midgsharp(8)
	midf(8)
	midcsharp(8)
	midc(8)
	lowgsharp(8)
	lowf(8)
}

p6()
{
	loweflat(8)
	lowg(8)
	lowbflat(8)
	midd(8)
	mideflat(8)
	midg(8)
	midbflat(8)
	highd(8)
	higheflat(8)
	highd(8)
	midbflat(8)
	midg(8)
	mideflat(8)
	midd(8)
	lowbflat(8)
	lowg(8)
	;loweflat(8)
}


Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
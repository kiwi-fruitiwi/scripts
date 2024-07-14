#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Final Fantasy VII Those Who Fight
; https://musescore.com/user/19635961/scores/3842516
; https://musescore.com/user/36539/scores/54388
; https://musescore.com/zanshiyoi/scores/93839
; A flat major? or f minor lol

#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(160)

Sleep 3000

p1()
p2()
p3()
p4()
p5()
p2()
p1()
lowf(1)

; flats
; e
; d
; b
; a


p1()
{
	;midf(8)
	;midf(8)
	;rest(8)
	;midf(8)
	;midf(8)
	;rest(8)
	;midf(8)
	;midf(8)

	midf(4) 
	rest(8)
	midf(4)
	rest(8)
	midf(4)
	rest(8)

	rest(8)
	lowaflat(8)
	midc(8)
	mideflat(8)
	midfsharp(8)
	midf(8)
	mideflat(8)
	midfsharp(8)

	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)

	rest(8)
	midc(8)
	midaflat(4)
	midg(4)
	midgflat(4)

	; 5
	midf(4) 
	rest(8)
	midf(4)
	rest(8)
	midf(4)
	rest(8)

	rest(8)
	lowaflat(8)
	midc(8)
	mideflat(8)
	midfsharp(8)
	midf(8)
	mideflat(8)
	midfsharp(8)

	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)

	rest(8)
	midf(4)
	rest(8)
	midc(4)
	lowaflat(4)
}

; ascending
p2()
{
	; 9
	lowf(4)
	rest(8)
	lowg(4)
	rest(8)
	lowaflat(4)
	rest(8)

	rest(8)
	lowbflat(4)
	rest(8)
	midc(4)
	mideflat(4)

	midf(4)
	rest(8)
	midg(4)
	rest(8)
	midaflat(4)

	rest(8)
	midbflat(4)
	rest(8)
	highc(4)
	higheflat(4)

	highf(4)
	rest(8)
	highg(4)
	rest(8)
	highaflat(4)

	rest(8)
	highbflat(4)
	rest(8)
	highhighc(2)
}

; p1 with an ascending ending leading to p4
p3()
{

	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)

	rest(8)
	lowaflat(8)
	midc(8)
	mideflat(8)
	midfsharp(8)
	midf(8)
	mideflat(8)
	midfsharp(8)

	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)

	rest(8)
	midc(8)
	midaflat(4)
	midg(4)
	midgflat(4)

	; 5
	rest(8)
	midf(8)
	midg(8)
	midaflat(8)
	midbflat(8)
	midaflat(8)
	midg(8)
	midc(8)

	rest(8)
	lowaflat(8)
	midc(8)
	mideflat(8)
	midfsharp(8)
	midf(8)
	mideflat(8)
	midfsharp(8)
	
	midf(4) 
	rest(8)
	midf(4)
	rest(8)
	midf(4)
	rest(8)

	midf(8)
	mide(8)
	midf(8)
	midg(8)
	midaflat(8)
	midg(8)
	midaflat(8)
	midbflat(8)
}

; modeled off of line 19 onward in
; https://musescore.com/user/36539/scores/54388
p4()
{
	rest(8)
	highc(8)
	midb(8)
	highc(8)
	midbflat(8)
	midaflat(8)
	midf(8)
	midg(8)

	midaflat(4)
	middflat(8)
	midc(4)
	middflat(8)
	midf(4)

	rest(8)
	lowaflat(8)
	lowg(8)
	lowaflat(4)
	lowaflat(8)
	lowbflat(8)
	midc(8)

	middflat(4)
	midc(8)
	middflat(4)
	mideflat(8)
	midg(8)
	midaflat(8)

	rest(8)
	midaflat(8)
	mideflat(8)
	midf(8)
	midg(8)
	midf(8)
	mideflat(8)
	middflat(8)

	midf(8)
	lowbflat(8)
	midc(8)
	middflat(8)
	mideflat(8)
	middflat(8)
	midf(8)
	middflat(8)

	lowbflat(8)
	middflat(4)
	midc(4)
	rest(8)
	lowbflat(4)
	
	rest(8)
	lowbflat(8)
	midc(8)
	middflat(8)
	mideflat(8)
	midf(8)
	midg(8)
	midaflat(8)
}

; syncopated climb!
; 8:30 in On the Verge of Assault
; a a a b a a b ... » intro swing twice » ascend
p5()
{
	p5a_low()
	p5a_low()
	p5b_low()
	p5a()
	p5a()
	p5b()
}

p5a()
{
	rest(8)
	midf(8)
	midaflat(4)
	midg(8)
	midbflat(4)
	midaflat(8)

	highc(4)
	midbflat(8)
	highdflat(4)
	highc(8)
	midaflat(8)
	midf(8)	
}

p5b()
{
	rest(8)
	mideflat(8)
	midg(4)
	midf(8)
	midaflat(4)
	midg(8)

	midbflat(4)
	midaflat(8)
	highc(4)
	midbflat(8)
	midg(8)
	mideflat(8)
}

p5a_low()
{
	rest(8)
	lowf(8)
	lowaflat(4)
	lowg(8)
	lowbflat(4)
	lowaflat(8)

	midc(4)
	lowbflat(8)
	middflat(4)
	midc(8)
	lowaflat(8)
	lowf(8)		
}

p5b_low()
{
	rest(8)
	loweflat(8)
	lowg(4)
	lowf(8)
	lowaflat(4)
	lowg(8)

	lowbflat(4)
	lowaflat(8)
	midc(4)
	lowbflat(8)
	lowg(8)
	loweflat(8)
}

Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
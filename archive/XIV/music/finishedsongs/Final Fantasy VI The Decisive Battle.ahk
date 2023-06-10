#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Final Fantasy VI The Decisive Battle
; https://musescore.com/user/7698821/scores/1991696
; https://musescore.com/fantasysheets/scores/2394286


#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(160)

Sleep 3000


Loop, 4
{
	intro()
}

p1()
p2()
p3_toolow()

Loop, 2
{
	low_intro()
}

p4()




intro()
{
	highe(8)
	highc(8)
	mida(8)
	highf(8)
	highc(8)
	mida(8)
	highfsharp(8)		
	highc(8)

	mida(8)
	highf(8)
	highc(8)
	mida(8)
	highe(8)
	highc(8)
	midb(8)
	highd(8)
}

low_intro()
{
	mide(8)
	midc(8)
	lowa(8)
	midf(8)
	midc(8)
	lowa(8)
	midfsharp(8)		
	midc(8)

	lowa(8)
	midf(8)
	midc(8)
	lowa(8)
	mide(8)
	midc(8)
	lowb(8)
	midd(8)
}

p1()
{
	mida(4)
	highe(4)
	highd(8)
	highc(4)
	midb(8)

	; 10
	rest(8)
	highc(8)
	highd(4)
	midb(4)
	midg(4)

	mida(2)
	midb(2)

	highc(2)
	highe(2)

	; !
	mida(8)
	midf(8)
	highe(8)
	midf(8)
	highd(8)
	highc(8)
	rest(8)
	midb(8)

	rest(8)
	highc(8)
	highd(4)
	midb(4)
	midg(4)

	mida(8)
	rest(4)
	lowa(8)
	rest(4)
	lowa(8)
	rest(8)

	rest(8)
	lowa(8)
	rest(4)
	lowa(4)
	lowg(4)

	; 17
	lowa(8)
	rest(4)
	lowa(8)
	rest(4)
	lowa(8)
	rest(8)

	rest(8)
	lowa(8)
	rest(4)
	lowa(4)
	lowg(4)
}

B_CA_CBCD_EC_EDE()
{
	lowb(4)
	midc(8)
	lowa(4)
	midc(8)
	lowb(8)
	midc(8)

	midd(4)
	mide(8)
	midc(4)
	mide(8)
	midd(8)
	mide(8)
}

; 19
p2()
{
	mide(8)
	mida(8)
	midb(8)
	highc(8)
	midb(8)
	mida(8)
	mide(8)
	midc(8)

	B_CA_CBCD_EC_EDE()

	; 22
	midf(8)
	lowb(8)
	midc(8)
	mide(8)
	mida(8)
	mide(8)
	midgsharp(8)
	mide(8)

	mida(8)
	mide(8)
	highc(8)
	midb(8)
	mida(8)
	mide(8)
	midc(8)
	lowa(8)

	B_CA_CBCD_EC_EDE()

	midf(8)
	midd(8)
	midg(8)
	mide(8)
	mida(8)
	midf(8)
	midb(8)
	midg(8)
}

; modeled from measure 14 of https://musescore.com/fantasysheets/scores/2394286
p3_toohigh()
{
	; 27 on  https://musescore.com/user/7698821/scores/1991696
	highf(4)
	rest(2)
	highc(4)

	midb(4)
	rest(8)
	highc(4)
	rest(8)
	highd(4)

	highe(4)
	rest(8)
	highf(4)
	rest(8)
	highg(4)

	highc(2)
	midb(4)
	rest(8)
	mida(8)

	; 16
	rest(8)
	rest(8)
	rest(8)
	highf(8)
	rest(8)
	rest(8)
	highc(8)
	rest(8)

	midb(8)
	rest(4)
	mida(8)
	rest(4)
	midg(4)

	mida(1)
	rest(4)
	midb(4)
	highc(4)
	highe(4)

	; 18
	highf(4)
	rest(2)
	highc(4)

	midb(4)
	rest(8)
	highc(4)
	rest(8)
	highd(4)

	highe(8)
	rest(8)
	rest(8)
	highf(8)
	rest(8)
	rest(8)
	highg(8)
	rest(8)
	
	highfsharp(8)
	rest(8)
	rest(8)
	highg(8)
	rest(8)
	rest(8)
	higha(8)
	rest(8)

	highhighc(1)
}

p3_toolow()
{
	; 27 on  https://musescore.com/user/7698821/scores/1991696
	midf(4)
	rest(2)
	midc(4)

	lowb(4)
	rest(8)
	midc(4)
	rest(8)
	midd(4)

	mide(4)
	rest(8)
	midf(4)
	rest(8)
	midg(4)

	midc(2)
	lowb(4)
	rest(8)
	lowa(8)

	; 16
	rest(8)
	rest(8)
	rest(8)
	midf(8)
	rest(8)
	rest(8)
	midc(8)
	rest(8)

	lowb(8)
	rest(4)
	lowa(8)
	rest(4)
	lowg(4)

	lowa(1)
	rest(4)
	lowb(4)
	midc(4)
	mide(4)

	; 18
	midf(4)
	rest(2)
	midc(4)

	lowb(4)
	rest(8)
	midc(4)
	rest(8)
	midd(4)

	mide(8)
	rest(8)
	rest(8)
	midf(8)
	rest(8)
	rest(8)
	midg(8)
	rest(8)
	
	midfsharp(8)
	rest(8)
	rest(8)
	midg(8)
	rest(8)
	rest(8)
	mida(8)
	rest(8)

	highc(1)

	rest(8)
	mida(8)
	midg(8)
	midf(8)
	midc(8)
	lowa(8)
	lowg(8)
	lowf(8)

	; ?
	; lowc(1)
	lowfsharp(2)
	rest(4)
	midc(4)
	mideflat(2)
	midfsharp(2)


	; 22
	lowb(4)
	rest(8)
	midd(4)
	rest(8)
	lowb(4)
	
	midd(4)
	rest(8)
	midf(4)
	rest(8)
	midd(4)

	mide(4)
	rest(8)
	midg(4)
	rest(8)
	mide(4)

	rest(8)
	midf(8)
	mide(8)
	mideflat(8)
	midd(8)
	middflat(8)
	midc(8)
	lowb(8)
}

p4() 
{	
	lowa(8)
	lowf(8)
	mide(8)
	lowf(8)
	midd(8)
	midc(8)
	rest(8)
	lowb(8)

	rest(8)
	midc(8)
	midd(4)
	lowb(4)
	lowg(4)

	lowa(8)
	rest(4)
	lowa(8)
	rest(4)
	lowa(8)
	rest(8)

	rest(8)
	lowa(8)
	rest(4)
	lowa(4)
	lowg(4)

	lowa(1)
}

Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
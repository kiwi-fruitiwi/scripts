#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Kataware Doki from Kimi No Na Wa - Your Name
; based off of https://www.youtube.com/watch?v=QVE6o5Ul1eE from PPoA

#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

Sleep 2000

bpm(105)

intro()
p1()
bpm(120)
p2()
dissonance()
p1()
p3()
p4()
p5()
p6()



intro()
{

	Loop, 2
	{
		; 1
		highhighc(8, 120)
		highb(8)
		highg(8)
		higha(8)
		highe(8)
		highg(8)
		highd(8)
		highe(8)
		highc(8)
		highd(8, 20)
		highg(8, 40)
		highe(4, 60)
		rest(2)
		rest(4)

		;2
		highhighc(8, 120)
		highb(8)
		highg(8)
		higha(8)
		highe(8)
		highg(8)
		highd(8)
		highe(8)
		highc(8)
		highd(8, 20)
		highg(8, 40)
		highe(8, 60)
		highd(8, 60)
		rest(8)
		rest(2)
		rest(4)
	}
}

p1()
{
	; 8
	highg(2)
	highg(4)
	rest(8)
	highg(8)

	; 9
	highg(4)
	highe(4)
	highd(4)
	highd(8)
	highc(8)
	
	; 10
	highe(1)

	; 11
	rest(2)
	rest(4)
	highc(4)

	; 12
	highg(2)
	highg(4)
	rest(8)
	highc(8)

	; 13
	highhighc(4)
	highb(8)
	higha(8)
	highg(4)
	highg(8)
	higha(8)

	; 14
	highg(2)

	highe(8)
	rest(16)
	highf(8)
	rest(16)
	highe(8)

	; 15
	highd(2)
	rest(4)
	highc(4)

	; 8 = 16
	highg(2)
	highg(4)
	rest(8)
	highg(8)

	; 9 = 17
	highg(4)
	highe(4)
	highd(4)
	highd(8)
	highc(8)
	
	; 10 = 18
	highe(1)
}

p2()
{
	; 19
	lowg(4)
	midg(4)
	highc(8)
	highd(8)
	highe(8)
	highd(8)

	; 20
	lowa(8)
	highc(8)
	highc(8)
	mida(8)
	highc(4)
	highc(8)
	highc(8)

	; 21 [line 3]
	lowf(4)
	rest(8)
	midf(8)
	highc(8)
	highd(8)
	highe(8)
	highd(8)

	; 22
	lowc(8)
	highc(4)
	highc(8)
	highg(4)
	highc(8)
	highd(8)

	; 23
	lowg(4)
	midg(4)
	highc(8)
	highd(8)
	highe(8)
	highd(8)

	; 24
	lowa(8)
	highc(8)
	highc(8)
	mida(8)
	highc(4)
	highc(8)
	highc(8)

	; 25
	lowf(4)
	rest(8)
	midf(8)

	highc(8)
	highd(8)
	highe(8)
	highd(8)

	; 26
	lowc(8)
	highc(4)
	highc(8)
	highg(4)

	highc(8)
	highd(8)

	; 27
	lowg(4)
	midg(4)
	rest(8)
	highc(8)
	highd(8)
	highc(8)
}

dissonance()
{
	; 28 to 30 made twice as fast
	midg(16)
	mide(16)
	midc(16)
	lowa(16)
	rest(4)
	rest(2)

	; 29
	highg(16)
	mida(16)
	midf(16)
	midd(16)
	lowb(16)
	rest(4)
	rest(2)

	; 30
	highe(16)
	highc(16)
	midb(16)
	midg(16)
	midc(16)
	rest(4)
	rest(2)

	; 31
	rest(1)

	; 32
	highc(16)
	midg(16)
	midf(16)
	midc(16)
	lowa(16)
	rest(4)
	rest(2)

	; 33
	highd(16)
	mida(16)
	midf(16)
	midd(16)
	lowbflat(16)
	rest(4)
	rest(2)

	; 34
	highe(16)
	highc(16)
	midb(16)
	midg(16)
	midc(16)
	rest(4)
	rest(2)

	; 35
	rest(1)
}

p3()
{
	; 55 This measure begins with a held quarter note
	rest(4)
	midg(4)
	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 56
	lowa(8)
	midc(8)
	midc(8)
	lowa(8)
	midc(4)
	midc(8)
	midc(8)

	; 57
	lowf(4)
	rest(8)
	lowf(8)
	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 58
	lowc(8)
	midc(4)
	midc(8)
	midg(4)
	midc(8)
	midd(8)

	; 59
	lowg(4)
	lowg(4)
	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 60
	lowa(8)
	midc(8)
	midc(8)
	lowa(8)
	midc(4)
	midc(8)
	midc(8)

	; 61
	lowf(4)
	rest(8)
	lowf(8)
	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 26
	lowc(8)
	midc(4)
	midc(8)
	midg(4)
	midc(8)
	midd(8)
}

p4()
{
	; 71
	rest(1)
	;rest(8)
	;lowd(8)
	;lowg(8)
	;lowb(8)
	;midd(8)
	;lowb(8)

	Loop, 2
	{
		; 72
		highc(8)
		midb(8)
		midg(8)
		mida(8)
		midd(8)
		mide(8)
		midg(8)
		mida(8)

		; 73
		midd(8)
		mide(8)
		midg(8)
		mida(8)
		midd(8)
		mide(8)
		midg(8)
		mida(8)
	}

	; 76
	midc(4)
	rest(8)
	midg(4)
	rest(8)
	mide(4)

	; 77
	rest(2)
	rest(4)
	midc(8)
	midc(8)

	; 78
	midc(4)
	rest(8)
	lowg(4)
	rest(8)
	midd(4)

	; 79
	rest(2)
	rest(4)
	midc(8)
	midd(8)

	; 80
	mide(4)
	rest(8)
	midd(4)
	rest(8)
	midg(8)
	mide(8)

	; 81
	rest(1)

	; 82
	midc(4)
	rest(8)
	lowg(4)
	rest(8)
	midc(4)

	; 83
	rest(4)
	lowc(8)
	lowg(8)
	midc(8)
	midg(8, 50)
	highc(8, 100)
	highg(8, 200)
	highhighc(8)
	rest(1)
}

p5()
{
	; this is the first part down one octave

	; 8
	midg(2)
	midg(4)
	rest(8)
	midg(8)

	; 9
	midg(4)
	mide(4)
	midd(4)
	midd(8)
	midc(8)
	
	; 10
	mide(1)

	; 11
	rest(2)
	rest(4)
	midc(4)

	; 12
	midg(2)
	midg(4)
	rest(8)
	midc(8)

	; 13
	highc(4)
	midb(8)
	mida(8)
	midg(4)
	midg(8)
	mida(8)

	; 14
	midg(2)

	mide(8)
	rest(16)
	midf(8)
	rest(16)
	mide(8)

	; 15
	midd(2)
	rest(4)
	midc(4)

	; 8 = 16
	midg(2)
	midg(4)
	rest(8)
	midg(8)

	; 9 = 17
	midg(4)
	mide(4)
	midd(4)
	midd(8)
	midc(8)
	
	; 10 = 18
	mide(1)
}

p6()
{
	; part 2 down one octave
	; 19
	lowg(4)
	lowg(4)
	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 20
	lowa(8)
	midc(8)
	midc(8)
	lowa(8)
	midc(4)
	midc(8)
	midc(8)

	; 21 [line 3]
	lowf(4)
	rest(8)
	lowf(8)
	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 22
	lowc(8)
	midc(4)
	midc(8)
	midg(4)
	midc(8)
	midd(8)

	; 23
	lowg(4)
	lowg(4)
	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 24
	lowa(8)
	midc(8)
	midc(8)
	lowa(8)
	midc(4)
	midc(8)
	midc(8)

	; 25
	lowf(4)
	rest(8)
	lowf(8)

	midc(8)
	midd(8)
	mide(8)
	midd(8)

	; 26
	lowc(8)
	midc(4)
	midc(8)
	midg(4)

	midc(8)
	midd(8)

	; 27
	lowg(4)
	lowg(4)
	rest(8, 100)
	midc(8, 150)
	midd(8, 200)
	midc(8)
}

Controlsend,, %stopMacro%, %winTitle%
ExitApp
#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
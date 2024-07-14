#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Final Fantasy Prelude
; https://www.reddit.com/r/ffxiv/wiki/perform#wikiffprelude

; change back to perform-keybinds.ahk once we're done testing
#Include D:\Dropbox\ahk scripts\XIV\music\perform-nonfocus.ahk

winTitle = FINAL FANTASY XIV

bpm := 65
whole := 240000 / bpm
half := 120000 / bpm
quarter := 60000 / bpm
eighth := 30000 / bpm
sixteenth := 15000 / bpm


Sleep 4000

;p1()
;p2()
;p3()
p4()

Sleep 1000
Controlsend,, {2}, %winTitle%
Sleep 4400
Controlsend,, {3}, %winTitle%

; measures 1-6
p1()
{
	; 1
	midb(8)
	mida(8)
	midb(8)
	highd(8)

	; 2
	highe(4)
	mida(2)
	rest(8)
	lowg(8)

	; 3
	lowfsharp(8)
	lowg(8)
	lowa(8)
	lowb(8)	
	mida(8)	
	midg(8)	
	mida(8)	
	highd(8)

	; 4
	highfsharp(8)
	highg(8)
	highe(8)
	midfsharp(8)
	mide(8)
	lowb(8)
	lowe(8)
	lowb(8)

	; 5
	lowd(8)
	lowb(8)
	mide(8)
	midfsharp(8)
	midb(8)
	mida(8)
	midb(8)
	highd(8)

	; 6
	highe(4)
	mida(4)
	rest(8)
	lowg(8)
	lowc(8)
	lowcsharp(8)
}

; measures 7-18
p2()
{
	; 7
	lowd(8)
	lowa(8)
	lowb(8)
	midg(8)
	mida(8)
	midb(8)
	mida(8)
	midg(8)

	; 8
	mide(8)
	lowb(8)
	mide(8)
	midfsharp(8)
	midg(4)

	midg(8)
	mida(8)

	; 9	
	midb(2)
	midb(8)
	mida(8)
	midb(8)
	highd(8)

	; 10
	highe(4)	
	mida(2)
	rest(4)
	;lowe(8)
	;midc(2)

	; 11
	lowd(8)
	lowfsharp(8)
	lowa(8)
	lowfsharp(8)
	mida(8)
	midg(8)
	mida(8)
	highd(8)

	; 12
	highfsharp(8)
	highg(8)
	highe(2)
	rest(4)

	; 13. start of page 2
	lowd(8)
	lowg(8)
	lowb(8)
	lowg(8)
	midb(8)
	mida(8)
	midb(8)
	highd(8)

	; 14
	highe(4)
	mida(4)
	midc(2)

	; 15
	lowd(8)
	lowfsharp(8)
	lowa(8)
	midg(8)
	mida(8)
	midb(8)
	mida(8)
	midg(8)

	; 16
	mide(8)
	lowg(8)
	lowb(8)
	lowg(8)

	lowd(8)
	lowfsharp(8)
	lowa(8)
	lowfsharp(8)

	; 17 - line 2
	lowc(8)
	lowe(8)
	lowg(8)
	lowe(8)
	midfsharp(8)
	lowd(8)
	lowfsharp(8)
	lowd(8)

	; 18
	rest(2)
	rest(8)
	midb(8)
	highd(8)
	midb(8)
}

; measures 19-26
; measure 19 is page 2 line 2 measure 3
p3()
{
	; 19
	highfsharp(4)
	highe(4)
	mide(8)
	lowb(8)
	lowa(8)
	lowg(8)

	; 20
	lowd(8)
	lowg(8)
	lowb(8)
	lowg(8)
	mide(8)
	highe(8)
	highfsharp(8)
	highg(8)

	; 21 - line 3, page 2
	highe(8)
	highc(8)
	midfsharp(8)
	midg(8)
	highd(4)
	highc(4)

	; 22
	midb(8)
	mide(8)
	midfsharp(8)
	midg(8)
	mida(8)
	midf(8)
	midfsharp(8)
	midb(8)

	; 23
	mida(8)
	midg(8)
	midfsharp(8)
	midg(8)
	midb(4)
	midg(4)

	; 24 line 4 page 2
	mide(8)
	lowg(8)
	midc(8)
	midd(8)
	mide(8)
	mide(8)
	midfsharp(8)
	midg(8)

	; 25 
	mida(8)
	midg(8)
	mida(8)
	midb(8)
	highd(4)
	highc(4)

	; 26
	midb(8)
	lowfsharp(8)
	lowb(8)
	lowfsharp(8)
	lowb(8)
	midb(8)
	highd(8)
	midb(8)
}

; measures 27-45
p4()
{
	; 27
	highfsharp(4)
	highe(4)
	mide(8)
	lowb(8)
	lowa(8)
	lowg(8)

	; 28
	lowd(8)
	lowg(8)
	lowb(8)
	lowg(8)
	mide(8)
	highe(8)
	highfsharp(8)
	highg(8)

	; 29
	highe(8)
	highc(8)
	midfsharp(8)
	midg(8)
	highd(4)
	highc(4)

	; 30
	midb(8)
	mide(8)
	midfsharp(8)
	midg(8)
	mida(8)
	midf(8)
	midfsharp(8)
	midb(8)

	; 31 page 3 first measure
	mida(8)
	midg(8)
	midfsharp(8)
	midg(8)
	midb(4)
	midg(4)

	; 32
	mide(8)
	lowg(8)
	midc(8)
	lowg(8)
	midc(8) ; lol
	mide(8)
	midfsharp(8)
	midg(8)

	; 32
	mida(8)
	midg(8)
	mida(8)
	midb(8)
	highc(8)
	highd(8)
	highe(8)
	highg(8)

	; 33 page 3 second line
	highfsharp(8)
	highe(8)
	highdsharp(8)
	highe(8)
	highfsharp(8)
	highg(8)
	higha(8)
	highhighc(8)

	; 34 2:05 into song
	highb(2)
	rest(8)
	highb(8)
	higha(8)
	highg(8)

	; 35
	highfsharp(4)
	highd(4)
	rest(8)
	highd(8)
	highe(8)
	highfsharp(8)

	; 36
	highc(8)
	highb(8)
	highb(4)
	rest(8)
	higha(8)
	highhighc(8)
	highb(8)

	; 37
	highfsharp(4)
	highd(4)
	lowd(8)
	lowfsharp(8)
	lowa(8)
	lowfsharp(8)

	; 38
	highb(2)
	rest(8)
	highb(8)
	higha(8)
	highg(8)

	; 39 line 4 page 3
	highfsharp(4)
	highd(4)
	rest(8)
	highd(8)
	midb(8)
	highd(8)

	; 40
	highe(8)
	lowe(8)
	lowa(8)
	lowe(8)
	midcsharp(8)
	highg(8)
	highfsharp(8)
	highd(8)

	; 41
	highe(8)
	midg(8)
	midb(8)
	midd(8)
	midcsharp(8)
	midg(8)
	midb(8)
	midg(8)

	; 42
	highe(8)
	lowe(8)
	lowa(8)
	lowe(8)
	midcsharp(8)
	highg(8)
	highfsharp(8)
	highd(8)

	; 43
	highe(8)
	lowe(8)
	lowg(8)
	lowe(8)
	lowd(8)
	mida(8)
	midg(8)
	midfsharp(8)

	; 44
	mide(8)
	lowg(8)
	lowb(8)
	lowg(8)
	lowe(4)
	midfsharp(16)
	mide(16)
	midd(8)

	; 45
	mide(1)
}


Controlsend,, %stopMacro%, %winTitle%
ExitApp

#z::Reload
#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
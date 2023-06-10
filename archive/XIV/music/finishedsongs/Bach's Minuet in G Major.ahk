#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Minuet in G by J.S. Bach
; https://www.8notes.com/scores/2402.asp


#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(110)

Sleep 2000

p1()
p2()

Sleep 1000

p1()
{
	; 1
	highd(4)
	midg(8)
	mida(8)
	midb(8)
	highc(8)

	; 2 
	highd(4)
	midg(4)
	midg(4)

	; 3 
	highe(4)
	highc(8)
	highd(8)
	highe(8)
	highfsharp(8)

	; 4
	highg(4)
	midg(4)
	midg(4)

	; 5
	highc(4)
	highd(8)
	highc(8)
	midb(8)
	mida(8)

	; 6
	midb(4)
	highc(8)
	midb(8)
	mida(8)
	midg(8)

	; 7
	midfsharp(4)
	midg(8)
	mida(8)
	midb(8)
	midg(8)
	
	; 8 we are in 3 / 4 time so we need a half note and quarter rest :P
	mida(2)
	rest(4)

	; 9 « 1
	highd(4)
	midg(8)
	mida(8)
	midb(8)
	highc(8)

	; 10 « 2 
	highd(4)
	midg(4)
	midg(4)

	; 11 « 3 
	highe(4)
	highc(8)
	highd(8)
	highe(8)
	highfsharp(8)

	; 12 « 4
	highg(4)
	midg(4)
	midg(4)

	; 13 « 5
	highc(4)
	highd(8)
	highc(8)
	midb(8)
	mida(8)

	; 14 « 6
	midb(4)
	highc(8)
	midb(8)
	mida(8)
	midg(8)

	; 15
	mida(4)
	midb(8)
	mida(8)
	midg(8)
	midfsharp(8)

	; 16
	midg(2)
	rest(2)
}

p2()
{
	; 17
	highb(4)
	highg(8)
	higha(8)
	highb(8)
	highg(8)

	; 18 
	higha(4)
	highd(8)
	highe(8)
	highfsharp(8)
	highd(8)

	; 19 
	highg(4)
	highe(8)
	highfsharp(8)
	highg(8)
	highd(8)

	; 20
	highcsharp(4)
	midb(8)
	highcsharp(8)
	mida(4)

	; 21
	mida(8)
	midb(8)
	highcsharp(8)
	highd(8)
	highe(8)
	highfsharp(8)

	; 22
	highg(4)
	highfsharp(4)
	highe(4)

	; 23
	highfsharp(4)
	mida(4)
	highcsharp(4)

	; 24
	highd(4)
	rest(2)

	; 25
	highd(4)
	midg(8)
	midfsharp(8)
	midg(4)

	; 26 
	highe(4)
	midg(8)
	midfsharp(8)
	midg(4)

	; 27
	highd(4)
	highc(4)
	midb(4)

	; 28
	mida(8)
	midg(8)
	midfsharp(8)
	midg(8)
	mida(4)

	; 29
	midd(8)
	mide(8)
	midfsharp(8)
	midg(8)
	mida(8)
	midb(8)

	; 30
	highc(4)
	midb(4)
	mida(4)

	; 31
	midb(8)
	highd(8)
	midg(4)
	midfsharp(4)

	; 32
	midg(2)	
}

Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Final Fantasy VII Crisis Core On The Verge of Assault
; https://musescore.com/user/19635961/scores/3842516
; https://musescore.com/user/36539/scores/54388
; https://musescore.com/zanshiyoi/scores/93839
; A flat major? or f minor lol

#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(160)

Sleep 3000

p1()
p2()
p3a()
p2_eighths_pause()
p3b()
p4()
p5()
p3a()
p2_eighths()
p3b()
p4()
p5()
FF_FF_FF()
_FCEbGbFEbGb()
high__FCEbGbFEbGb()

; Eb Db Bb Ab

; mid . F C Eb Gb F Eb Gb
_FCEbGbFEbGb()
{
	rest(8)
	midf(8)
	midc(8)
	mideflat(8)
	midgflat(8)
	midf(8)
	mideflat(8)
	midgflat(8)
}

high__FCEbGbFEbGb()
{
	rest(8)
	highf(8)
	highc(8)
	higheflat(8)
	highgflat(8)
	highf(8)
	higheflat(8)
	highgflat(8)
}

F__F__F()
{
	midf(4) 
	rest(8)
	midf(4)
	rest(8)
	midf(4)
}

hllhllhl_F()
{
	midf(8)
	lowf(8)
	lowf(8)
	midf(8)
	lowf(8)
	lowf(8)
	midf(8)
	lowf(8)
}

FF_FF_FF()
{
	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)
	rest(8)
	midf(8)
	midf(8)
}

_FA_G_Gb_()
{
	rest(8)
	midf(8)
	midaflat(4)
	midg(4)
	midgflat(4)
}

_FAb_G_F_G_F_Eb_F_()
{
	rest(8)
	midf(8)
	midaflat(4)
	midg(4)
	midf(4)
	midg(4)
	midf(4)
	mideflat(4)
	midf(4)
}

p1()
{
	_FCEbGbFEbGb()

	rest(4)
	rest(8)
	mideflat(4)
	mideflat(4)
	mideflat(4)

	F__F__F()
	F__F__F()
	F__F__F()

	_FCEbGbFEbGb()
	F__F__F()
	_FAb_G_F_G_F_Eb_F_()
	_FCEbGbFEbGb()
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

p2_eighths_pause()
{
	lowf(8)
	lowf(8)
	rest(8)
	lowg(8)
	lowg(8)
	rest(8)
	lowaflat(8)
	lowaflat(8)

	rest(8)
	lowbflat(8)
	lowbflat(8)
	rest(8)
	midc(8)
	midc(8)
	mideflat(8)
	mideflat(8)

	midf(8)
	midf(8)
	rest(8)
	midg(8)
	midg(8)
	rest(8)
	midaflat(8)
	midaflat(8)

	rest(8)
	midbflat(8)
	midbflat(8)
	rest(8)
	highc(8)
	highc(8)
	higheflat(8)
	higheflat(8)

	highf(8)
	highf(8)
	rest(8)
	highg(8)
	highg(8)
	rest(8)
	highaflat(8)
	highaflat(8)

	rest(8)
	highbflat(8)
	highbflat(8)
	rest(8)
	highhighc(8)
	highhighc(8)
	rest(4)
}

p2_eighths()
{
	lowf(8)
	lowf(8)
	lowf(8)
	lowg(8)
	lowg(8)
	lowg(8)
	lowaflat(8)
	lowaflat(8)

	lowaflat(8)
	lowbflat(8)
	lowbflat(8)
	lowbflat(8)
	midc(8)
	midc(8)
	mideflat(8)
	mideflat(8)

	midf(8)
	midf(8)
	midf(8)
	midg(8)
	midg(8)
	midg(8)
	midaflat(8)
	midaflat(8)

	midaflat(8)
	midbflat(8)
	midbflat(8)
	midbflat(8)
	highc(8)
	highc(8)
	higheflat(8)
	higheflat(8)

	highf(8)
	highf(8)
	highf(8)
	highg(8)
	highg(8)
	highg(8)
	highaflat(8)
	highaflat(8)

	highaflat(8)
	highbflat(8)
	highbflat(8)
	highbflat(8)
	highhighc(8)
	highhighc(8)
	rest(8)
}

highFF_GbGb_E_()
{
	highf(8)
	highf(8)
	rest(8)
	highgflat(8, 200)
	highgflat(8, -200)
	rest(8)
	higheflat(8)
	rest(8)
}

p3a()
{
	FF_FF_FF()
	_FCEbGbFEbGb()
	high__FCEbGbFEbGb()
	highFF_GbGb_E_()
}

; 0:40 On the Verge of Assault https://www.youtube.com/watch?v=dZt1lBWr_zM
p3b()
{
	hllhllhl_F()
	_FCEbGbFEbGb()
	high__FCEbGbFEbGb()
	highFF_GbGb_E_()

	FF_FF_FF()
	_FCEbGbFEbGb()
	high__FCEbGbFEbGb()

	highf(8)
	highe(8)
	highf(8)
	highg(8)
	highaflat(8)
	highg(8)
	highaflat(8)
	highbflat(8)

}

; 0:50 On the Verge of Assault https://www.youtube.com/watch?v=dZt1lBWr_zM
; modeled off of line 19 onward in
; https://musescore.com/user/36539/scores/54388
old_p4()
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

p4()
{
	rest(8)
	highhighc(8)
	highb(8)
	highhighc(8)
	highbflat(8)
	highaflat(8)
	highf(8)
	highg(8)

	highaflat(4)
	highdflat(8)
	highc(4)
	highdflat(8)
	highf(4)

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
	lowbflat(4)

	rest(8)
	highaflat(8)
	higheflat(8)
	highf(8)
	highg(8)
	highf(8)
	higheflat(8)
	highdflat(8)

	highf(8)
	midbflat(8)
	highc(8)
	highdflat(8)
	higheflat(8)
	highdflat(8)
	highf(8)
	highdflat(8)

	midbflat(8)
	highdflat(4)
	highc(4)
	rest(8)
	midbflat(4)
	
	rest(8)
	midbflat(8)
	highc(8)
	highdflat(8)
	higheflat(8)
	highf(8)
	highg(8)
	highaflat(8)
}

; syncopated climb!
; 1:02 in On the Verge of Assault
p5()
{
	;p5a_low()
	;p5a_low()
	;p5b_low()
	p5a()
	p5a()
	p5b()
	p5a()
	p5a()
	p5b()
}

p5a()
{
	lowf(8)
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
	loweflat(8)
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
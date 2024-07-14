#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Zelda Great Fairy Fountain
; https://musescore.com/user/71248/scores/4471641

#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm(80)

Sleep 6000

intro_arpeggios()
main()
main()


main() 
{
	; 3
	descend_ADBbG()
	descend_GDBbG()
	descend_FsDBbG()
	descend_GDBbG()

	; 4
	descend_GCAF()
	descend_FCAF()
	descend_ECAF()
	descend_FCAF()

	; 5
	descend_FBbGE()
	descend_EBbGE()
	descend_EbBbGE()
	descend_EBbGE()

	; 6
	descend_EAFD()
	descend_DAFD()
	descend_DbAFD()
	descend_DAFD_rit()

	; 7 - repeat m3
	bpm(65)
	descend_ADBbG()
	bpm(70)
	descend_GDBbG()
	bpm(75)
	descend_FsDBbG()
	bpm(80)
	descend_GDBbG()

	; 8
	descend_BbEbCGb()
	descend_AEbCGb()
	descend_AbEbCGb()
	descend_AEbCGb()

	; 9
	descend_CDBbG()
	descend_BbDBbG()
	descend_ADBbG()
	descend_BbDBbG()

	; 10
	descend_ADBbE()
	descend_GDBbE()
	descend_FDBbE()
	descend_EDBbE()
}

descend_ADBbE()
{
	higha(16)
	highd(16)
	midbflat(16)
	mide(16)
}

descend_GDBbE()
{
	highg(16)
	highd(16)
	midbflat(16)
	mide(16)
}

descend_FDBbE()
{
	highf(16)
	highd(16)
	midbflat(16)
	mide(16)
}

descend_EDBbE()
{
	highe(16)
	highd(16)
	midbflat(16)
	mide(16)
}


descend_CDBbG()
{
	highhighc(16)
	highd(16)
	midbflat(16)
	midg(16)
}

descend_BbDBbG()
{
	highbflat(16)
	highd(16)
	midbflat(16)
	midg(16)
}


descend_BbEbCGb()
{
	highbflat(16)
	higheflat(16)
	highc(16)
	midgflat(16)
}

descend_AEbCGb()
{
	higha(16)
	higheflat(16)
	highc(16)
	midgflat(16)
}

descend_AbEbCGb()
{
	highaflat(16)
	higheflat(16)
	highc(16)
	midgflat(16)
}




descend_EAFD()
{
	highe(16)
	mida(16)
	midf(16)
	midd(16)
}

descend_DAFD_rit()
{
	highd(16, 20)
	mida(16, 40)
	midf(16, 60)
	midd(16, 80)
}

descend_DAFD()
{
	highd(16)
	mida(16)
	midf(16)
	midd(16)
}

descend_DbAFD()
{
	highdflat(16)
	mida(16)
	midf(16)
	midd(16)
}


descend_FBbGE()
{
	highf(16)
	midbflat(16)
	midg(16)
	mide(16)
}

descend_EBbGE()
{
	highe(16)
	midbflat(16)
	midg(16)
	mide(16)	
}

descend_EbBbGE()
{
	higheflat(16)
	midbflat(16)
	midg(16)
	mide(16)	
}

descend_ECAF()
{
	highe(16)
	highc(16)
	mida(16)
	midf(16)
}

descend_FCAF()
{
	highf(16)
	highc(16)
	mida(16)
	midf(16)
}

descend_GCAF()
{
	highg(16)
	highc(16)
	mida(16)
	midf(16)
}

descend_FsDBbG()
{
	highfsharp(16)
	highd(16)
	midbflat(16)
	midg(16)
}

descend_GDBbG()
{
	highg(16)
	highd(16)
	midbflat(16)
	midg(16)
}

descend_ADBbG()
{
	higha(16)
	highd(16)
	midbflat(16)
	midg(16)
}


intro_arpeggios()
{
	lowe(16)
	lowg(16)
	lowbflat(16)
	midd(16)

	rest(8)

	lowg(16)
	lowbflat(16)
	midd(16)
	mide(16)

	rest(8)

	lowbflat(16)
	midd(16)
	mide(16)
	midg(16)

	rest(8)

	midd(16)
	mide(16)
	midg(16)
	midbflat(16)

	rest(8)

	mide(16)
	midg(16)
	midbflat(16)
	highd(16)

	rest(8)

	midg(16)
	midbflat(16)
	highd(16)
	highe(16)

	rest(0, 2000)
}



Controlsend,, %stopMacro%, %winTitle%
ExitApp

#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	ExitApp
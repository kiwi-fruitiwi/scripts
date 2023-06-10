#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Gets rid of the window modifier key problem
; but introduces a lag on the extra key presses

winTitle = FINAL FANTASY XIV
accept = {Blind}{m}
left = {Blind}{o}
stopMacro = {Blind}{F12}

midc = {numpad1}
midcsharp = {numpad2}
middflat = {numpad2}
midd = {numpad3}
middsharp = {numpad4}
mideflat = {numpad4}
mide = {numpad5}
midf = {numpad6}
midfsharp = {numpad7}
midgflat = {numpad7}
midg = {numpad8}
midgsharp = {numpad9}
midaflat = {numpad9}
mida = {numpad0}
midasharp = {numpaddiv}
midbflat = {numpaddiv}
midb = {numpadmult}

lowc = {n}
lowcsharp = {h}
lowdflat = {h}
lowd = {l}
lowdsharp = {e}
loweflat = {e}
lowe = {r}
lowf = {f}
lowfsharp = {t}
lowgflat = {t}
lowg = {g}
lowgsharp = {v}
lowaflat = {v}
lowa = {b}
lowasharp = {x}
lowbflat = {x}
lowb = {c}

highc = {1}
highcsharp = {2}
highdflat = {2}
highd = {3}
highdsharp = {4}
higheflat = {4}
highe = {5}
highf = {6}
highfsharp = {7}
highgflat = {7}
highg = {8}
highgsharp = {9}
highaflat = {9}
higha = {0}
highasharp = {-}
highbflat = {-} 
highb = {=}
highhighc = {q}

bpm(n)
{
	global
	whole := 240000 / n
	half := 120000 / n
	quarter := 60000 / n
	eighth := 30000 / n
	sixteenth := 15000 / n	
}

; Sleeps for the equivalent of a note
; 0 = no sleep, used with adjustment value
; 1 = whole
; 2 = half
; 3 = half + quarter
; 4 = quarter
; 6 = quarter + eighth
; 8 = eighth
; 12 = eighth + sixteenth
; 16 = sixteenth
; these values should be defined in each song script
pause(interval, adjustment:=0)
{
	global 
	if (interval = 0)
	{
		Sleep adjustment
	}
	else if (interval = 1)
	{
	    Sleep whole+adjustment
	}
	else if (interval = 2)
	{
	    Sleep half+adjustment
	}
	else if (interval = 3)
	{
	    Sleep half+quarter+adjustment
	}
	else if (interval = 4)
	{
		Sleep quarter+adjustment
	}
	else if (interval = 6)
	{
	    Sleep quarter+eighth+adjustment
	}
	else if (interval = 8)
	{
	    Sleep eighth+adjustment
	}
	else if (interval = 12)
	{
	    Sleep eighth+sixteenth+adjustment
	}
	else if (interval = 16)
	{
	    Sleep sixteenth+adjustment
	}
	else
	{
		MsgBox Unexpected interval value in pause(interval): %interval%.
	}
}

rest(interval, adjustment:=0)
{
	global
	pause(interval, adjustment)
}


;;;;;;;
; low ;
;;;;;;;
lowc(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowc%, %winTitle%
	pause(interval, adjustment)	
}

lowcsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowcsharp%, %winTitle%
	pause(interval, adjustment)	
}

lowdflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowdflat%, %winTitle%
	pause(interval, adjustment)	
}

lowd(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowd%, %winTitle%
	pause(interval, adjustment)	
}

lowdsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowdsharp%, %winTitle%
	pause(interval, adjustment)	
}

loweflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %loweflat%, %winTitle%
	pause(interval, adjustment)	
}

lowe(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowe%, %winTitle%
	pause(interval, adjustment)	
}

lowf(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowf%, %winTitle%
	pause(interval, adjustment)	
}

lowfsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowfsharp%, %winTitle%
	pause(interval, adjustment)	
}

lowgflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowgflat%, %winTitle%
	pause(interval, adjustment)	
}

lowg(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowg%, %winTitle%
	pause(interval, adjustment)	
}

lowgsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowgsharp%, %winTitle%
	pause(interval, adjustment)	
}

lowaflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowaflat%, %winTitle%
	pause(interval, adjustment)	
}

lowa(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowa%, %winTitle%
	pause(interval, adjustment)	
}

lowasharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowasharp%, %winTitle%
	pause(interval, adjustment)	
}

lowbflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowbflat%, %winTitle%
	pause(interval, adjustment)	
}

lowb(interval, adjustment:=0) 
{
	global

	Controlsend,, %lowb%, %winTitle%
	pause(interval, adjustment)	
}


;;;;;;;
; mid ;
;;;;;;;
midc(interval, adjustment:=0) 
{
	global

	Controlsend,, %midc%, %winTitle%
	pause(interval, adjustment)	
}

midcsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %midcsharp%, %winTitle%
	pause(interval, adjustment)	
}

middflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %middflat%, %winTitle%
	pause(interval, adjustment)	
}

midd(interval, adjustment:=0) 
{
	global

	Controlsend,, %midd%, %winTitle%
	pause(interval, adjustment)	
}

middsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %middsharp%, %winTitle%
	pause(interval, adjustment)	
}

mideflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %mideflat%, %winTitle%
	pause(interval, adjustment)	
}

mide(interval, adjustment:=0) 
{
	global

	Controlsend,, %mide%, %winTitle%
	pause(interval, adjustment)	
}

midf(interval, adjustment:=0) 
{
	global

	Controlsend,, %midf%, %winTitle%
	pause(interval, adjustment)	
}

midfsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %midfsharp%, %winTitle%
	pause(interval, adjustment)	
}

midgflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %midgflat%, %winTitle%
	pause(interval, adjustment)	
}

midg(interval, adjustment:=0) 
{
	global

	Controlsend,, %midg%, %winTitle%
	pause(interval, adjustment)	
}

midgsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %midgsharp%, %winTitle%
	pause(interval, adjustment)	
}

midaflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %midaflat%, %winTitle%
	pause(interval, adjustment)	
}

mida(interval, adjustment:=0) 
{
	global

	Controlsend,, %mida%, %winTitle%
	pause(interval, adjustment)	
}

midasharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %midasharp%, %winTitle%
	pause(interval, adjustment)	
}

midbflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %midbflat%, %winTitle%
	pause(interval, adjustment)	
}

midb(interval, adjustment:=0) 
{
	global

	Controlsend,, %midb%, %winTitle%
	pause(interval, adjustment)	
}

;;;;;;;;
; high ;
;;;;;;;;

highc(interval, adjustment:=0) 
{
	global

	Controlsend,, %highc%, %winTitle%
	pause(interval, adjustment)	
}

highcsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %highcsharp%, %winTitle%
	pause(interval, adjustment)	
}

highdflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %highdflat%, %winTitle%
	pause(interval, adjustment)	
}

highd(interval, adjustment:=0) 
{
	global

	Controlsend,, %highd%, %winTitle%
	pause(interval, adjustment)	
}

highdsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %highdsharp%, %winTitle%
	pause(interval, adjustment)	
}

higheflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %higheflat%, %winTitle%
	pause(interval, adjustment)	
}

highe(interval, adjustment:=0) 
{
	global

	Controlsend,, %highe%, %winTitle%
	pause(interval, adjustment)	
}

highf(interval, adjustment:=0) 
{
	global

	Controlsend,, %highf%, %winTitle%
	pause(interval, adjustment)	
}

highfsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %highfsharp%, %winTitle%
	pause(interval, adjustment)	
}

highgflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %highgflat%, %winTitle%
	pause(interval, adjustment)	
}

highg(interval, adjustment:=0) 
{
	global

	Controlsend,, %highg%, %winTitle%
	pause(interval, adjustment)	
}

highgsharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %highgsharp%, %winTitle%
	pause(interval, adjustment)	
}

highaflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %highaflat%, %winTitle%
	pause(interval, adjustment)	
}


higha(interval, adjustment:=0) 
{
	global

	Controlsend,, %higha%, %winTitle%
	pause(interval, adjustment)	
}

highasharp(interval, adjustment:=0) 
{
	global

	Controlsend,, %highasharp%, %winTitle%
	pause(interval, adjustment)	
}

highbflat(interval, adjustment:=0) 
{
	global

	Controlsend,, %highbflat%, %winTitle%
	pause(interval, adjustment)	
}

highb(interval, adjustment:=0) 
{
	global

	Controlsend,, %highb%, %winTitle%
	pause(interval, adjustment)	
}

highhighc(interval, adjustment:=0) 
{
	global

	Controlsend,, %highhighc%, %winTitle%
	pause(interval, adjustment)	
}
; IQ, SH2, WN, HTx4, Manipulation = 187 cp
; SH2, WN, HTx4 = 81 cp. total is 268
;	another SH2 in here is +25 = 293. my 41 gsm has 287
; WN, SH2 = 56 + 25. 81


winTitle = FINAL FANTASY XIV`: A Realm Reborn

Loop,
{
	; start the craft by pressing "accept" three times
	Controlsend,, m, %winTitle%
	Sleep 1000
	Controlsend,, m, %winTitle%
	Sleep 1000
	Controlsend,, m, %winTitle%
	Sleep 1000
	Controlsend,, m, %winTitle%
	Sleep 4000

	; update screenshot to dropbox using a snagit hotkey
	Send !^+{F11}

	; part one: inner quiet, steady hands II, waste not, 4 hasty touch

	Controlsend,, {F9}, %winTitle%
	Sleep 22000

	; part two: manipulation, steady hands II, waste not, 4 hasty touch
	Controlsend,, {F10}, %winTitle%
	Sleep 22000

	; part three: steady hands II, hasty touch, and two standard synthesis
	Controlsend,, {F11}, %winTitle%
	Sleep 13500

	; update screenshot to dropbox using a snagit hotkey
	Send !^+{F12}

	; extra sleep for lag. not sure
	Sleep 4500
}



#z::Reload
#x::Pause
winTitle = FINAL FANTASY XIV`: A Realm Reborn

Loop,
{
	; start the craft by pressing "accept" three times
	Controlsend,, m, %winTitle%
	Sleep 300
	Controlsend,, m, %winTitle%
	Sleep 300
	Controlsend,, m, %winTitle%
	Sleep 300
	Controlsend,, m, %winTitle%
	Sleep 3000

	; update screenshot to dropbox using a snagit hotkey
	Send !^+{F11}

	; part one: 19.5s. inner quiet, steady hand II, 5 hasty touch, steady hand II

	Controlsend,, {F9}, %winTitle%
	Sleep 22000

	; part two: 19.5s. hasty touch, master's mend II, 3 hasty touch, steady hand II, waste not
	Controlsend,, {F10}, %winTitle%
	Sleep 22000

	; part three: 17.5s. 3 hasty touch, rumination, steady hand, 2 standard synthesis
	Controlsend,, {F11}, %winTitle%
	Sleep 15000

	; update screenshot to dropbox using a snagit hotkey
	Send !^+{F12}

	; extra sleep for lag. not sure
	Sleep 2500
}



#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
winTitle = FINAL FANTASY XIV`: A Realm Reborn

Loop,
{
	; start the craft by pressing "accept" three times
	Controlsend,, m, %winTitle%
	Sleep 400
	Controlsend,, m, %winTitle%
	Sleep 400
	Controlsend,, m, %winTitle%
	Sleep 400
	Controlsend,, m, %winTitle%
	Sleep 2000

	; update screenshot to dropbox using a snagit hotkey
	Send !^+{F11}

	; part one: comfyzone, inner quiet, steady hand II, waste not, 4 hasty touch
	Controlsend,, {F9}, %winTitle%
	Sleep 22000

	; part two: manipulation, steady hands II, waste not, 4 hasty touch
	Controlsend,, {F10}, %winTitle%
	Sleep 18000

	; part three: steady hand II, 2 hasty touch, rumination, standard synth
	Controlsend,, {F11}, %winTitle%
	Sleep 13500

	; update screenshot to dropbox using a snagit hotkey
	Send !^+{F12}

	; extra sleep for lag. not sure
	Sleep 3000
}



#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
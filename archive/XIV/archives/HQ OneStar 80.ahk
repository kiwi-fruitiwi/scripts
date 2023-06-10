#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; 11 HTs
; CZ, IQ, SH2, HTx5
; SH2, HT, MM2, CZ, HTx2
; SH2, HTx3
; SH, ING2, GS, Byregot, Standard Synthesis, CS2 
; needs food

; 10 HTs, two under Ingenuity
; CZ, IQ, ING, CS2, CS2, SH2, HTx5
; CZ, MM2, SH2, HTx5
; SH, GS, ING2, Byregot, CS2
; I seem to have 22 cp left at the end, so... food not required? XD

winTitle = FINAL FANTASY XIV`: A Realm Reborn
lag = 700
sleep_buff := 1500 + lag
sleep_ability := 2500 + lag

accept = {Blind}{numpadadd}
comfort_zone = {Blind}{numpad1}
inner_quiet = {Blind}{numpad2}
steady_hand_2 = {Blind}{numpad3}
waste_not = {Blind}{numpad4}
hasty_touch = {Blind}{numpad5}
manipulation = {Blind}{numpad6}
masters_mend_2 = {Blind}{numpad7}
steady_hand = {Blind}{numpad8}
ingenuity = {Blind}{numpad9}
ingenuity_2 = {Blind}x
great_strides = {Blind}{numpad0}
byregot = {Blind}{numpaddiv}
careful_synthesis_2 = {Blind}{numpadmult}
standard_synthesis = {Blind}{F11}
standard_touch = {Blind}{F8}
basic_touch = {Blind}{F9}
advanced_touch = {Blind}{F10}
stop_macro = {Blind}{F12}
end_of_synth_screenshot = {Blind}{F14}


; this script was created on 2013.10.23 to work with the following stats:
; 	356cp after 17cp stone soup buff


InputBox, UserInput, Quantity, # HQ 1* 80 duras
Loop, %UserInput%
{
	; start the craft by pressing accept 4 times quickly
		Loop, 4 
		{
			Controlsend,, %accept%, %winTitle%
			Sleep 400
		}

	; wait for synthesis dialog to pop up
		Sleep %sleep_ability%

	; CZ, IQ, SH2, HTx5
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 5
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%
		}


	; SH2, HT, MM2, CZ, HTx2
		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %hasty_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %masters_mend_2%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Loop, 2
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%
		}


	; SH2, HTx3
		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 3
		{
			Controlsend,, %hasty_touch%, %winTitle%
			Sleep %sleep_ability%
		}


	; SH, ING2, GS, Byregot, Standard Synthesis, CS2 
		Controlsend,, %steady_hand%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %ingenuity_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %standard_synthesis%, %winTitle%
		Sleep %sleep_ability%

	
		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%


	; update screenshot to dropbox using a snagit hotkey
		Send %end_of_synth_screenshot%

	; extra sleep for lag. not sure
		Sleep 4500
}


; the macro has finished. now update the screenshot every 15 seconds
Loop ,
{
	Sleep 15000
	Send %end_of_synth_screenshot%
}

#z::Reload
#x:: 
	Controlsend,, {F12}, %winTitle%
	Pause
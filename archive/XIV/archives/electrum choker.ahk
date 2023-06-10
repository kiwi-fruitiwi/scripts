#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

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

InputBox, UserInput, Quantity, # HQ Lv. 49 80 dura 3x CS2


; seems like this requires about 337 cp

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


	; CZ, IQ, SH2, BTx5
		Controlsend,, %comfort_zone%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %inner_quiet%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Loop, 5
		{
			Controlsend,, %basic_touch%, %winTitle%
			Sleep %sleep_ability%
		}


	; waste not, steady hand 2, basic touch, advanced touch, standard synth
	; this allows us to use 3 charges of waste not, effectively getting four
		Controlsend,, %waste_not%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %steady_hand_2%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %basic_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %advanced_touch%, %winTitle%
		Sleep %sleep_ability%

		Controlsend,, %standard_synthesis%, %winTitle%
		Sleep %sleep_ability%


	; great strides, byregot's, careful synthesis II
		Controlsend,, %great_strides%, %winTitle%
		Sleep %sleep_buff%

		Controlsend,, %byregot%, %winTitle%
		Sleep %sleep_ability%
		
		Controlsend,, %careful_synthesis_2%, %winTitle%
		Sleep %sleep_ability%
	

	; update screenshot to dropbox using a snagit hotkey
		Send %end_of_synth_screenshot%

	; extra sleep for lag. not sure
		Sleep 3000
}

; the macro has finished. now update the screenshot every 15 seconds
Loop ,
{
	Sleep 15000
	Send %end_of_synth_screenshot%
}

#z::Reload
#x:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
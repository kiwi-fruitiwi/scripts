#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

winTitle = FINAL FANTASY XIV
accept = {Blind}{m}
left = {Blind}{o}
stop_macro = {Blind}{F12}

low_c = {numpad1}

mid_c = {q}
mid_c_sharp = {e}
mid_d_flat = {e}
mid_d = {r}
mid_d_sharp = {f}
mid_e_flat = {f}
mid_e = {t}
mid_f = ^{f}
mid_f_sharp = {g}
mid_g_flat = {g}
mid_g = ^{e}
mid_g_sharp = ^{r}
mid_a_flat = ^{r}
mid_a = {v}
mid_a_sharp = {b}
mid_b_flat = {b}
mid_b = ^{q}

high_c = +^{e}
high_c_sharp = +{e}
high_d = +{s}
high_e_flat = ^{w}


bpm := 100
whole := 240000 / bpm
half := 120000 / bpm
quarter := 60000 / bpm
eighth := 30000 / bpm
sixteenth := 15000 / bpm

InputBox, UserInput, Quantity, How many times to loop this test song?
Loop, %UserInput%
{

	;; 7
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_b_flat%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth

	;; 8
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth

	;; 7 and 9
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_b_flat%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth

	;; 8 and 10
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth

	;; 11
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_e%, %winTitle%
	Sleep sixteenth

	;; 12
	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b_flat%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth

	;; 13 and 11
	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_e%, %winTitle%
	Sleep sixteenth

	;; 14
	Controlsend,, %mid_f%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_f_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_g_sharp%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_a%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth

	;; 15
	Controlsend,, %high_d%, %winTitle%
	Sleep sixteenth

	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_b%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b_flat%, %winTitle%
	Sleep sixteenth

	Controlsend,, %high_e_flat%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_d%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth

	;; 16
	Controlsend,, %high_d%, %winTitle%
	Sleep sixteenth

	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_b%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b_flat%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth


	;; 15 / 17
	Controlsend,, %high_d%, %winTitle%
	Sleep sixteenth

	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_b%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b_flat%, %winTitle%
	Sleep sixteenth

	Controlsend,, %high_e_flat%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_d%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth

	;; 16 / 18
	Controlsend,, %high_d%, %winTitle%
	Sleep sixteenth

	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %mid_b%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b_flat%, %winTitle%
	Sleep sixteenth

	Controlsend,, %mid_b%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c%, %winTitle%
	Sleep sixteenth
	
	Controlsend,, %high_c_sharp%, %winTitle%
	Sleep sixteenth


	Sleep 1000
}

#z::Reload
#c:: 
	Controlsend,, %stop_macro%, %winTitle%
	Pause
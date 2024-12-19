#Requires AutoHotkey v2.0

; recommended for new scripts due to its superior speed and reliability
SendMode("Input")  

; ensures a consistent starting directory.
SetWorkingDir(A_ScriptDir)

; from stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script
#SingleInstance Force

; 31 → bottom left box
; 35 → blue screen
; 14 → globe
; 13 → chip
TraySetIcon("Shell32.dll", 13, 1)
; TrayTip("AutoHotKey", "Started", 1)
SoundPlay("*16")

winTitle := "FINAL FANTASY XIV"
lag := 300

; buff and ability execution durations. "instant" for dPad and accept
instant := 50 + lag
buff := 1700 + lag
ability := 2500 + lag


; helper function to create ability maps
action(keybind, duration) {
    return Map("keybind", keybind, "duration", duration)
}

abilities := Map(
    "accept", action("{m}", instant),
    "reflect", action("{q}", ability),
    "preparatory touch", action("{g}", ability),
    "prudent synthesis", action("{1}", ability),
    "basic touch", action("{2}", ability),
    "standard touch", action("{3}", ability),
    "advanced touch", action("{4}", ability),
    "waste not II", action("{5}", buff),
    "waste not", action("{1}", buff),
    "trained eye", action("{CtrlDown}v{CtrlUp}", ability),
    "veneration", action("{CtrlDown}s{CtrlUp}", buff),
    "manipulation", action("{CtrlDown}q{CtrlUp}", buff),
    "basic synthesis", action("{b}", ability),
    "prudent touch", action("{e}", ability),
    "groundwork", action("{v}", ability),
    "great strides", action("{CtrlDown}x{CtrlUp}", buff),
    "innovation", action("{x}", buff),
    "byregot's blessing", action("{t}", ability),
    "careful synthesis", action("{c}", ability),
    "master's mend", action("{CtrlDown}c{CtrlUp}", ability)
)

; sends keystroke given an action name, then uses sleep() for correct duration
enact(name) {
	keybind := abilities[name]["keybind"]
	delay := abilities[name]["duration"]

	ControlSend(keybind, , winTitle)
	Sleep(delay)
}

n := InputBox("35 durability 2* 730CP: wn² on {5}", "crafting bot 🤖", "w300 h95").value
Loop n {
	Loop 4 { 
		enact("accept") 
	}

	; wait for synthesis dialog to pop up
	Sleep 1000

	; begin synthesis
	enact("reflect")
	enact("manipulation")
	enact("waste not II")
	enact("innovation")
	enact("preparatory touch")
	enact("preparatory touch")
	enact("preparatory touch")
	enact("preparatory touch")
	enact("basic touch")
	enact("standard touch")
	enact("advanced touch")

	enact("manipulation")
	enact("great strides")
	enact("innovation")
	enact("byregot's blessing")

	enact("veneration")
	enact("waste not")
	enact("groundwork")
	enact("groundwork")
	enact("groundwork")
	enact("basic synthesis")

	; sleep at the end of the synth to allow time for the menu to load
	Sleep 2000
}


#y:: {           
	Send("^s")  ; To save a changed script
	Sleep(300)  ; give it time to save the script
	Reload()
}
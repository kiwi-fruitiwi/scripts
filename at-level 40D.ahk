#Requires AutoHotkey v2.0

; recommended for new scripts due to its superior speed and reliability
SendMode("Input")  

; ensures a consistent starting directory.
SetWorkingDir(A_ScriptDir)

; from stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script
#SingleInstance Force
TraySetIcon("Shell32.dll", 13, 1)  ; tray icon!
TrayTip("AutoHotKey", "Started", 1)
SoundPlay("*16")

winTitle := "FINAL FANTASY XIV"
lag := 200

; buff and ability execution durations. "instant" for dPad and accept
instant := 50 + lag
buff := 1500 + lag
ability := 2500 + lag


; helper function to create ability maps
action(keybind, duration) {
    return Map("keybind", keybind, "duration", duration)
}

abilities := Map(
    "accept", action("{m}", instant),
    "muscle memory", action("{q}", ability),
    "manipulation", action("{CtrlDown}q{CtrlUp}", buff),
    "basic synthesis", action("{b}", ability),
    "prudent touch", action("{e}", ability),
    "prudent synthesis", action("{1}", ability),
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

n := InputBox("40 durability current level", "crafting bot 🤖", "w300 h95").value
Loop n {
	Loop 4 { 
		enact("accept") 
	}

	; wait for synthesis dialog to pop up
	Sleep 1000

	; begin synthesis
	enact("muscle memory")
	enact("manipulation")
	enact("prudent synthesis")

	Loop 10 {
		enact("prudent touch")
	}

	; final quality touches: great strides, innovation, byregot's blessing
	enact("great strides")
	enact("innovation")
	enact("byregot's blessing")
	
	; master's mend → complete synthesis
	enact("master's mend")
	Loop 4 {
		enact("basic synthesis")
	}

	; sleep at the end of the synth to allow time for the menu to load
	Sleep 2000
}



#y:: {           
	Send("^s")  ; To save a changed script
	Sleep(300)  ; give it time to save the script
	Reload()
}
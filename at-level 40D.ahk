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

; buff and ability execution durations
buffExDura := 1500 + lag
abilityExDura := 2500 + lag

; helper function to create ability maps
createAbility(keybind, duration) {
    return Map("keybind", keybind, "duration", duration)
}

abilities := Map(
    "accept", createAbility("{m}", 0),
    "muscle memory", createAbility("{q}", abilityExDura),
    "manipulation", createAbility("{CtrlDown}q{CtrlUp}", buffExDura),
    "basic synth", createAbility("{b}", abilityExDura)
)

; MsgBox("Test: " . abilities["muscle memory"]["keybind"])
Send(abilities["muscle memory"]["keybind"])

#y:: {           
	Send("^s")  ; To save a changed script
	Sleep(300)  ; give it time to save the script
	Reload()
}
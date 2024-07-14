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

#y:: {           
	Send("^s")  ; To save a changed script
	Sleep(300)  ; give it time to save the script
	Reload()
}
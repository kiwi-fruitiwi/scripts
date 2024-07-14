#Requires AutoHotkey v2.0

; recommended for new scripts due to its superior speed and reliability
SendMode("Input")  

; ensures a consistent starting directory.
SetWorkingDir(A_ScriptDir)


; from stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script
#SingleInstance Force
TraySetIcon("Shell32.dll", 25, 1)  ; tray icon!
TrayTip("AutoHotKey", "Started", 1)
SoundPlay("*16")


LCtrl::LAlt
LAlt::LCtrl

; ? means no beginning char is needed to trigger
; * means no ending char is needed to trigger

; ? hotstring will be triggered even when it is inside another word
; * ending char (space, enter) not required to trigger
; c case sensitive

#WheelUp::Volume_Up
#WheelDown::Volume_Down
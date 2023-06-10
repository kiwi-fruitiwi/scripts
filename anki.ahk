









; this needs to not be open during sc2 because camera hotkeys there us ^+s to set camera location 3!



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetTitleMatchMode, 2

; from stackoverflow.com/questions/15706534/hotkey-to-restart-autohotkey-script
#SingleInstance Force
#installKeybdHook
#Persistent
Menu, Tray, Icon, Shell32.dll, 58, 1
TrayTip, AutoHotKey, Started, 1
;SoundBeep, 300, 150
SoundPlay *16
Return


;https://gist.github.com/JoeGlines/f8f82c0c9377570edadfad6e67f96118
; for clipboard manipulation and restoring original clipboard
Clipboard_Backup_Copy_Selected_Text() {
	ClipBack := Clipboard ;Store full version of Clipboard	
	clipboard = ; Empty the clipboard
	SendInput, ^c
	ClipWait, 1
	If ErrorLevel { ;Added errorLevel checking		
		Clipboard:=ClipBack ;Restore Clipboard
		MsgBox, No text was sent to clipboard
		Return 
	}
	Return ClipBack
}

; WRAP HTML in <span class='code'...
; ^+z::
; #IfWinActive ahk_exe anki.exe
; Wraps selected text in whatever we want
^+s::
if WinActive("ahk_exe anki.exe") {
	Store:=Clipboard_Backup_Copy_Selected_Text()

	;prepend
	ClipBoard:=StrReplace(Clipboard,"`n","`n<span class='code'>")

	;postpend
	Clipboard:=StrReplace(Clipboard,"`r","</span>`r")

	; wrap with comments tag
	Clipboard := "<span class='code'>" Clipboard "</span>"

	Send, ^v
	Sleep, 150
	Clipboard := Store
} 
Return

; WRAP HTML in <div class='code'...
; ^+z::
; #IfWinActive ahk_exe anki.exe
; Wraps selected text in whatever we want
!^+s::
if WinActive("ahk_exe anki.exe") {
	Store:=Clipboard_Backup_Copy_Selected_Text()

	;prepend
	ClipBoard:=StrReplace(Clipboard,"`n","`n<div class='code'>")

	;postpend
	Clipboard:=StrReplace(Clipboard,"`r","</div>`r")

	; wrap with comments tag
	Clipboard := "<div class='code'>" Clipboard "</div>"

	Send, ^v
	Sleep, 150
	Clipboard := Store
	
}
Return

;#u::  		; replaces accessibility control panel shortcut. Y is available
;Send, ^s 	; To save a changed script
;Sleep, 300 	; give it time to save the script
;Reload
;Return
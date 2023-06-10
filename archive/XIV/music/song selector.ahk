#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Minuet in G by J.S. Bach
; https://www.8notes.com/scores/2402.asp


#Include D:\Dropbox\scripts\XIV\music\perform-keybinds.ahk

bpm := 110
whole := 240000 / bpm
half := 120000 / bpm
quarter := 60000 / bpm
eighth := 30000 / bpm
sixteenth := 15000 / bpm

; Gui, Show , w700 h100, Song Selector

; Example: ListBox containing files in a directory:
Gui, Add, Text,, Pick a song to play
Gui, Add, ListBox, vMyListBox gMyListBox w300 r10
Gui, Add, Button, Default, Play Song

songpath = D:\Dropbox\scripts\XIV\music\finishedsongs\
Loop, %songpath%*.*
{
	; not really sure how this works. can try StringTrimLeft as well
	; StringReplace, fileNameNoExt, A_LoopFileName, % "." . A_LoopFileExt
	StringTrimRight, fileNameNoExt, A_LoopFileName, 4
	GuiControl,, MyListBox, %fileNameNoExt%
}

Gui, Show, Center, Kiwi's Song Selector ^o^
return

MyListBox:
	if A_GuiEvent != DoubleClick
	return

; Otherwise, the user double-clicked a list item, so treat that the same as pressing OK.
; So fall through to the next label.


ButtonPlaySong:
	; Retrieve the ListBox's current selection.
	GuiControlGet, MyListBox  
	Run, %songpath%%MyListBox%.ahk,, UseErrorLevel
	Gui, Hide

	if ErrorLevel = ERROR
	    MsgBox Could not launch the specified file.

	return

GuiClose:
GuiEscape: 
	Gui, Destroy

Controlsend,, %stopMacro%, %winTitle%

#z::Reload
#c:: 
	Controlsend,, %stopMacro%, %winTitle%
	Pause
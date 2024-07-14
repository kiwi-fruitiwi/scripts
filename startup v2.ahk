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

#WheelUp::Volume_Up
#WheelDown::Volume_Down

; date time replacements for sublime text logging
:*?:isod!@:: {
	Send(FormatTime(A_NOW, "hh:mm tt dddd, MMMM dd, yyyy") . "`n")
	Send(FormatTime(A_NOW, "[HHmm]") . "{U+2192}`t")
}

:*?:asdf!@:: {
	Send("[" . FormatTime(A_NOW, "HHmm") . "]-`t")
}

:*?:fdsa!@:: {
	Send("[?...]-`t")
}


; ? means no beginning char is needed to trigger
; * means no ending char is needed to trigger

; ? hotstring will be triggered even when it is inside another word
; * ending char (space, enter) not required to trigger
; c case sensitive




; github autocompletion
:*?:u17!@::git add .; git commit -m "update 17L data"; git push
:*?:glo!@::git log --oneline
:*?:gds!@::git diff --staged
:*?:gcm!@::git commit -m ""{left 1}
:*?:gcd!@::git commit --date=" days ago" -m ""{left 16}
:*?:gca!@::git commit --amend -m ""{left 1}
:*?:gkf!@::github.com/kiwi-fruitiwi
:*?:gwf!@::github.com/winry-fruitiwi
:*?:gcb!@::github.com/cody-berry
:*?:kiwijs!@::C:\Users\kiwi\Dropbox\code\javascript\kiwi\
:*?:kiwipy!@::C:\Users\kiwi\Dropbox\code\python\kiwi

; disable widget bar
; #w::MsgBox(A_ComputerName " disabled widget bar")
#w::Return

; convert explorer into win+0 to access taskbar explorer
#e::#0

; disable teams shortcut
#c::Return

; disable feedback hub shortcut
#f::Return


; convert shift+enter to ctrl+enter in google chrome for sheets newline
; this mimics discord behavior
+Enter:: {
	if (A_ComputerName = "Elise") {
		if WinActive("ahk_exe chrome.exe") {
		    Send("^Enter")
		} else {
		    Send("+Enter")
		}
	} else {
		; make sure we still send +Enter if we're not on Elise :P
		Send("+Enter") 
	}
}

; replaces accessibility control panel shortcut. Y is available
#u:: {
	Send("^s")  ; To save a changed script
	Sleep(300)  ; give it time to save the script
	Reload()
}
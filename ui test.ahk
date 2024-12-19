#Requires AutoHotkey v2.0

; Define the functions for each option
option1() {
    MsgBox("Option 1 selected")
}

option2() {
    MsgBox("Option 2 selected")
}

; Create the GUI
app := Gui()
app.SetFont("s10", "Segoe UI")  ; Set the font for the GUI

; Add buttons for the options
button1 := app.Add("Button", "w100 h30", "Option 1")
button2 := app.Add("Button", "w100 h30", "Option 2")

; Define button click events
button1.OnEvent("Click", (*) => option1())
button2.OnEvent("Click", (*) => option2())

; Show the GUI
app.Show("w220 h100 Center")

; Keep the script running
return
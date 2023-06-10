#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


winTitle = FINAL FANTASY XIV`: A Realm Reborn
lag = 700
sleep_buff := 1500 + lag
sleep_ability := 2500 + lag

accept = {numpadadd}
comfort_zone = {numpad1}
inner_quiet = {numpad2}
steady_hand_2 = {numpad3}
waste_not = {numpad4}
hasty_touch = {numpad5}
manipulation = {numpad6}
masters_mend_2 = {numpad7}
steady_hand = {numpad8}
ingenuity = {numpad9}
ingenuity_2 = x
great_strides = {numpad0}
byregot = {numpaddiv}
careful_synthesis_2 = {numpadmult}
standard_synthesis = {F11}
cycle_screenshot = {F13}
frequent_screenshot = {F14}


Loop ,
{
	Send {F13}
	Sleep %sleep_buff%
}
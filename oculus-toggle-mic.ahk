; Made with <3 by biosignal

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#include auto_oculus_touch.ahk

; Start the Oculus sdk.
InitOculus()

DllCall("auto_oculus_touch\poll")
ResetFacing(0)
ResetFacing(1)

Loop {
    ; Grab the latest Oculus input state (Touch, Remote and Xbox One).
    Poll()

    ; Get button states. 
    ; Down is the current state. If you test with this, you get a key every poll it is down. Repeating.
    ; Pressed is set if transitioned to down in the last poll. Non repeating.
    ; Released is set if transitioned to up in the last poll. Non repeating.
    down     := GetButtonsDown()
    pressed  := GetButtonsPressed()
    released := GetButtonsReleased()
    touchDown     := GetTouchDown()
    touchPressed  := GetTouchPressed()
    touchReleased := GetTouchReleased()

	; You can actually use other inputs as well!
	; To do that, replace 'ovrTouch_Y' with one of these:
	; ovrTouch_A, ovrTouch_B, ovrTouch_X, ovrTouch_Y
	; ovrTouch_LThumb, ovrTouch_LThumbRest, ovrTouch_LIndexTrigger
	; ovrTouch_RThumb, ovrTouch_RThumbRest, ovrTouch_RIndexTrigger

	if touchReleased & ovrTouch_RThumbRest
		SoundSet, +1, MASTER, mute,REPLACE_ME
		SoundGet, master_mute, , mute, REPLACE_ME

	Sleep 10
}
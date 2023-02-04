vkf0::Send,{Blind}{BS}
;replace esc key

PgUp & x::Send,{Blind}{BS}
PgUp::Space

IME_Setting()
{
    if(IME_Get())
    {
        ans := IME_SET(0)
        Sleep 10
        Send,{Blind}{Esc}
    }
    else
    {
        Send,{Blind}{Esc}
    }
}

    ;無変換キーを押した時、IMEオンならオフに変更,関数はLibファイルから読み込んでいる   
vk1d::
PgDn::
IME_Setting()
Return
; Return
;mouse move 
;こんな関数使い立ったけど、使えなかった。
/*
switching_by_shift(){
    If GetKeyState("Shift", "P") 
            move := 50
    else
            move := 20
    Return move
ヒラギノ角ゴシック}
*/
keyDown()
{
    Send, #Down
}
vk1d & u::keyDown()
PgDn & u::keyDown()

keyUp()
{
    Send, #UP
}
PgDn & i::keyUp()
vk1d & i::keyUp()

mouseUP(){
    If GetKeyState("Shift", "P") 
            amount_of_move = 50
    else
            amount_of_move = 20
    MouseMove  -amount_of_move, 0, 0 , R
}
PgDn & o::mouseUP()
vk1d & o::mouseUP()

mouseDown(){

    If GetKeyState("Shift", "P") 
            amount_of_move = 50
    else
            amount_of_move = 20
    MouseMove amount_of_move, 0,  0 , R
}
PgDn & p::mouseDown()


mouseRclick(){
    ; Send,{RIGHT}
    MouseClick Right
}
PgDn & r:: mouseRclick()
vk1d & r:: mouseRclick()

mouseLclick(){
    MouseClick LEFt
}
PgDn & t:: mouseLclick()
vk1d & t:: mouseLclick()



changeWindowForword(){
    Send,{ShiftAltTab}
}
PgDn & d::ShiftAltTab
vk1d & d::ShiftAltTab
; PgDn & d::changeWindowForword()
; vk1d & d::changeWindowForword()

; PgDn & d::
; vk1d & d::
; changeWindowForword()
; Return

changeWindowBack(){
    Send,{AltTab}
    ; AltTab
}
PgDn & f::AltTab
vk1d & f::AltTab
; PgDn & f::changeWindowBack()
; vk1d & f::changeWindowBack()
; Return

;operate like vim
PgDn & h::Send,{Blind}{Left}
PgDn & j::Send,{Blind}{Down}
PgDn & k::Send,{Blind}{Up}
PgDn & l::Send,{Blind}{Right}


;set active window in the foreground
PgDn & s::  Winset, Alwaysontop, , A

PgDn & n:: Send,{y down}
PgDn & m:: Send,{y up}


;for tapstrap exchange ime

;End::
;    if(IME_Get())
;    { ans := IME_SET(0) }
;    else
;    { ans := IME_SET(1) }
;    Return
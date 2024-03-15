
;replace esc key
vk1d & x::
PgUp & x::
vkf0::
Send,{Blind}{BS}
Return

PgUp::Space
vkf0::Space

vkf2::Send, {Blind}{vkf3}

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


;mouse move 
;こんな関数使いたかったけど、使えなかった。
/*
switching_by_shift(){
    If GetKeyState("Shift", "P") 
            move := 50
    else
            move := 20
    Return move
ヒラギノ角ゴシック}
*/

vk1d & u::#Down
PgDn & u::#Down

PgDn & i::#UP
vk1d & i::#UP

mouseUP(){
    If GetKeyState("Shift", "P") 
            amount_of_move = 50
    else
            amount_of_move = 20
    MouseMove  -amount_of_move, 0, 0 , R
}
PgDn & o::
vk1d & o::
mouseUP()
Return

mouseDown(){

    If GetKeyState("Shift", "P") 
            amount_of_move = 50
    else
            amount_of_move = 20
    MouseMove amount_of_move, 0,  0 , R
}
PgDn & p::
vk1d & p::
mouseDown()
Return

PgDn & r::
vk1d & r::
MouseClick Right
Return

PgDn & t::
vk1d & t::
MouseClick Left
Return


PgDn & d::ShiftAltTab
vk1d & d::ShiftAltTab

PgDn & f::AltTab
vk1d & f::AltTab
; PgDn & f::changeWindowBack()
; vk1d & f::changeWindowBack()
; Return

;operate like vim
PgDn & h::Send,{Blind}{Left}
vk1d & h::Send,{Blind}{Left}

PgDn & j::Send,{Blind}{Down}
vk1d & j::Send,{Blind}{Down}

PgDn & k::Send,{Blind}{Up}
vk1d & k::Send,{Blind}{Up}

PgDn & l::Send,{Blind}{Right}
vk1d & l::Send,{Blind}{Right}


;set active window in the foreground
PgDn & s::  Winset, Alwaysontop, , A
vk1d & s::  Winset, Alwaysontop, , A

PgDn & n:: PgDn
vk1d & n:: PgDn

PgDn & m:: PgUp
vk1d & m:: PgUp


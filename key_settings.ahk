
;replace esc key

PgUp & x::Send,{Blind}{BS}
PgUp::Space

PgDn::
    ;無変換キーを押した時、IMEオンならオフに変更,関数はLibファイルから読み込んでいる   
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
    Return


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
PgDn & u::#Down
PgDn & i::#UP
PgDn & o::
    If GetKeyState("Shift", "P") 
            amount_of_move = 50
    else
            amount_of_move = 20
    MouseMove  -amount_of_move, 0, 0 , R
    Return
PgDn & p::
    If GetKeyState("Shift", "P") 
            amount_of_move = 50
    else
            amount_of_move = 20
    MouseMove amount_of_move, 0,  0 , R
    Return


PgDn & r:: MouseClick RIGHT
PgDn & t:: MouseClick LEFT




PgDn & d::ShiftAltTab
PgDn & f::AltTab

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

End::
    if(IME_Get())
    { ans := IME_SET(0) }
    else
    { ans := IME_SET(1) }
    Return
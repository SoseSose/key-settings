
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

PgUp::
    IME_Setting()
Return
;replace esc key

PgDn::Space
PgDn & x::
    send,{Blind}{BS}
Return

PgDn & u::#Down
PgDn & i::#UP

mouseUP(){
    If GetKeyState("Shift", "P") 
        amount_of_move = 50
    else
        amount_of_move = 20
    MouseMove -amount_of_move, 0, 0 , R
}
PgDn & o::
    mouseUP()
Return

mouseDown(){

    If GetKeyState("Shift", "P") 
        amount_of_move = 50
    else
        amount_of_move = 20
    MouseMove amount_of_move, 0, 0 , R
}
PgDn & p::
    mouseDown()
Return

PgDn & r::
    MouseClick Right
Return

PgDn & t::
    MouseClick Left
Return

PgDn & d::ShiftAltTab
PgDn & f::AltTab

;operate like vim
PgDn & h::Send,{Blind}{Left}
PgDn & j::Send,{Blind}{Down}
PgDn & k::Send,{Blind}{Up}
PgDn & l::Send,{Blind}{Right}

;set active window in the foreground
PgDn & s:: Winset, Alwaysontop, , A

PgDn & n:: 
    send {WheelDown 1}
return
PgDn & m:: 
    send {WheelUp 1}
return

PgDn & b::
Loop, 30
{
    Send,{Down}
}
Return

PgDn & v::
Loop, 30
{
    Send,{Up}
}
Return

;数字キーと記号キーを入れ替え
; 1::+1
; 2::+2
; 3::+3
; 4::+4
; 5::+5
; 6::+6
; 7::+7
; 8::+8
; 9::+9

; +0::Send, k
; +1::Send, 1
; +2::Send, 2
; +3::Send, 3
; +4::Send, 4
; +5::Send, 5
; +6::Send, 6
; +7::Send, 7
; +8::Send, 8
; +9::Send, 9
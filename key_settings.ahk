
;MD_Barroco770の無変換はFn押しながらじゃないと反応しないので,マクロで無変換→無変換+Fnに置き換えて置くこと
;またノートpcではそうでもないがbarrocoは左の変換キーが届きづらいので左のSpaceキーも変換キーに置き換えて置くこと

IME_Setting()
{
    if(IME_Get())
    {
        ans := IME_SET(0)
    }
    else
    { 
        ans := IME_SET(1)
    }
}
SC079::IME_Setting()
Return
;無変換キーを押した時、IMEオンならオフに変更,関数はLibファイルから読み込んでいる

;vkf0はCapsLock
vkf0:: Send {BackSpace}

;SC07Bは変換キー
SC07B::Esc
SC07B & x::
    send,{Blind}{BS}
Return

SC07B & y::#Left
SC07B & u::#Down
SC07B & i::#Up
SC07B & o::#Right

SC07B & r::
    MouseClick Right
Return

SC07B & t::
    MouseClick Left
Return

SC07B & d::ShiftAltTab
SC07B & f::AltTab

;operate like vim
SC07B & h::Send,{Blind}{Left}
SC07B & j::Send,{Blind}{Down}
SC07B & k::Send,{Blind}{Up}
SC07B & l::Send,{Blind}{Right}

;set active window in the foreground
SC07B & s:: Winset, Alwaysontop, , A

SC07B & n:: 
    send {WheelDown 1}
return
SC07B & m:: 
    send {WheelUp 1}
return

SC07B & b::
    Loop, 30
    {
        Send,{Down}
    }
Return

SC07B & v::
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
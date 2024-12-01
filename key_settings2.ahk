#Requires AutoHotkey v2.0
#Warn
#SingleInstance Force
#include .\IMEv2.ahk

IME_Setting()
{
    is_ime_on := IME_GET()
    if(is_ime_on)
    {
        IME_SET(0)
    }
    else
    {
        IME_SET(1)
    }
}

SC079::{
    IME_Setting()
    Return
}

;vkf0はCapsLock
vkf0:: Send "{BackSpace}"

;SC07Bは変換キー
SC07B::{
    ;move-モードで全角だとうっとおしいので戻す
    Send "{Esc}"
    IME_SET(0)
    Return
}

SC07B & y::#Left
SC07B & u::#Down
SC07B & i::#Up
SC07B & o::#Right

SC07B & r::{
    MouseClick "Right"
    Return
}

SC07B & t::{
    MouseClick "Left"
    Return
}

SC07B & d::ShiftAltTab
SC07B & f::AltTab

;operate like vim
SC07B & h::Send "{Blind}{Left}"
SC07B & j::Send "{Blind}{Down}"
SC07B & k::Send "{Blind}{Up}"
SC07B & l::Send "{Blind}{Right}"

;set active window in the foreground
SC07B & s:: WinSetAlwaysOnTop(-1, "A")

; SC07B & n::{
;     Send "{WheelDown 1}"    
;     Return
; }

; SC07B & m::{
;     Send "{WheelUp 1}"
;     Return
; }


; SC07B & b::{
;     Loop, 30
;     {
;         Send "{Down}"
;     }
;     Return
; }

; SC07B & v::{
;     Loop, 30
;     {
;         Send "{Up}" 
;     }
;     Return
; }


NoIMEInput(key){
    IME_SET(0)
    Send "{Blind}" key
    IME_SET(1)
}

; imeがオンの時も記号は半角で入力されるように
#HotIf IME_GET()
0::NoIMEInput("0")
1::NoIMEInput("1")
2::NoIMEInput("2")
3::NoIMEInput("3")
4::NoIMEInput("4")
5::NoIMEInput("5")
6::NoIMEInput("6")
7::NoIMEInput("7")
8::NoIMEInput("8")
9::NoIMEInput("9")

;shift付きの場合も定義する必要がある．
+0::NoIMEInput("+0")
+1::NoIMEInput("+1")
+2::NoIMEInput("+2")
+3::NoIMEInput("+3")
+4::NoIMEInput("+4")
+5::NoIMEInput("+5")
+6::NoIMEInput("+6")
+7::NoIMEInput("+7")
+8::NoIMEInput("+8")
+9::NoIMEInput("+9")

; "を押すと2個の"が勝手に出てきても特にタイプ数が変わることが少ないので不要
; +2::
;     NoIMEInput("+2")
;     NoIMEInput("+2")""
; Return

;ーだけは割と使うことがあるのでそのままにしておく
; -::NoIMEInput("-")
+-::NoIMEInput("+-")

^::NoIMEInput("^")
+^::NoIMEInput("+^")

;sc07Dは右上の円¥マークの所,右下の\マークの所と混同して解釈されるのでキーコードで設定
sc07D::NoIMEInput("¥")
+sc07D::NoIMEInput("|")

@::NoIMEInput("@")
+@::NoIMEInput("+@")

[::NoIMEInput("[")
+[::NoIMEInput("+[")

]::NoIMEInput("]")
+]::NoIMEInput("+]")

`;::NoIMEInput("`;")
+`;::NoIMEInput("+`;")

; コロンの設定，いまいち文法がわからない.
; 修飾キーなしなら普通に使えるのになしだとコードsc028でしか使えない
:::NoIMEInput("`:")*::
+sc028::NoIMEInput("`:")

,::NoIMEInput(",")
+,::NoIMEInput("+,")

.::NoIMEInput(".")
+.::NoIMEInput("+.")

?::NoIMEInput("?")
+?::NoIMEInput("+?")

/::NoIMEInput("/")
+/::NoIMEInput("+/")

;sc073は右下の\の所,¥マークと混同して解釈されるのでキーコードで設定
sc073::NoIMEInput("\")
+sc073::NoIMEInput("_")

#HotIf




    vk1C & h::Send,{Blind}{Left}
    vk1C & j::Send,{Blind}{Down}
    vk1C & k::Send,{Blind}{Up}
    vk1C & l::Send,{Blind}{Right}
    vk1C & x::
        If GetKeyState("Shift","P")
            Send,{Blind}{Delete}
        Else
            Send,{Blind}{Backspace}
        Return
    vk1C & z::Send,{Blind}{Del}
    vk1C & u::
        MouseClick,WheelUp,,,5,0,D,R
       Return 
    vk1C & d::
        MouseClick,WheelDown,,,5,0,D,R
       Return 
    vk1C & b::
        MouseClick,WheelUp,,,10,0,D,R
       Return 
    vk1C & f::
        MouseClick,WheelDown,,,10,0,D,R
       Return 
;こんな感じで
    vk1D & u::
    If GetKeyState("Shift", "P") {
        MouseMove 0, 50, 0, R
            }else{
        MouseMove 0, 20, 0, R
                }
    Return 
    vk1D & i::
    MouseMove 0, 20, 0, R
    Return 
    vk1D & o::
    MouseMove -20, 0, 0, R
    Return 
    vk1D & p::
    MouseMove 20, 0, 0, R
    Return 
    
    vk1D::
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
;無変換キーを押した時、IMEオンならオフに変更,関数はLibファイルから読み込んでいる
    vk1D & d::ShiftAltTab
    vk1D & f::AltTab

    vk1D & h::#Left
    vk1D & j::#Down
    vk1D & k::#UP
    vk1D & l::#Right
    vkF2::vkf3

    vk1D & R::AppsKey
   vk1D & s::  Winset, Alwaysontop, , A

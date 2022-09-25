GroupAdd OneNoteGroup, ahk_exe onenote.exe
GroupAdd VimEnv, ahk_exe Code.exe
GroupAdd VimEnv, ahk_exe WindowsTerminal.exe

#Persistent
ToolTip, Timed ToolTip`nThis will be displayed for 5 seconds.
    SetTimer, RemoveToolTip, -3000
return

RemoveToolTip:
    ToolTip
return

; 禁用 LShit + LCtrl 切换输入法
; $
; 单引号（'）和双引号（"）互换
;
'::"
return

;
$^'::
    Send {'}
return

; 减号（-）和下划线（_）互换
;
; -::_
; return

;
; $-::
; Send {-}
; return

; return

; 移动光标
; 光标左移
$^b::
    if WinActive("ahk_group VimEnv") {
        send ^b
    }
    else {
        Send {Left}
    }
return

; 光标右移
$^f::
    if WinActive("ahk_group VimEnv") {
        send ^f
    }
    else {
        Send {Right}
    }
return

; 光标上移
; OneNote中无法直接映射上下,改成^Up
$^p::
    if WinActive("ahk_group VimEnv") {
        Send ^p
    }
    else {
        Send,{Up}
    }
return

; 光标下移
; OneNote中无法直接映射上下,改成^D
$^n::
    if WinActive("ahk_group VimEnv") {
        Send ^n
    }
    else {
        Send,{Down}
    }
return

; 光标移动到行首
$^a::
    if WinActive("ahk_group VimEnv") {
        Send ^a
    }
    else {
        Send {Home}
    }
return

; 光标移动到行末
$^e::
    if WinActive("ahk_group VimEnv") {
        Send ^e
    }
    else {
        Send {End}
    }
return

; 删除
; 向左删除
$^h::
    if WinActive("ahk_group VimEnv") {
        Send ^h
    }
    else {
        Send {Backspace}
    }
return

; 向右删除
$^d::
    if WinActive("ahk_group VimEnv") {
        Send ^d
    }
    else {
        Send {Del}
    }
return

; 删除当前位置到行尾
$^k::
    if WinActive("ahk_group VimEnv") {
        Send ^k
    }
    else {
        Send +{End}
        Send {Del}
    }
return

; 删除当前位置到行首
$^u::
    if WinActive("ahk_group VimEnv") {
        ; ToolTip, "this is if brand".
        SetTimer, RemoveToolTip, -2988
        Send ^u
    }
    else {
        Send +{Home}
        ; ToolTip, "this is else brand".
        SetTimer, RemoveToolTip, -2999
        Send {Backspace}
    }
return

; 重新利用被占用热键
; win+f代替C-f（查找）
$#f::
    if WinActive("ahk_group VimEnv") {
        Send #f
    }
    else {
        Send ^{f}
    }
return

; win+f代替C-f（全局查找）
$#+f::
    if WinActive("ahk_group VimEnv") {
        Send #+f
    }
    else {
        Send ^+{f}
    }
return

; win+a代替C-a（全选）
$#a::
    if WinActive("ahk_group VimEnv") {
        Send #a
    }
    else {
        Send ^{a}
    }
return

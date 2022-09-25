
; 约定：
      ; C 为 Ctrl 键
      ; W 为 Win 键
      ; S 为 Shift 键
  ; 移动光标：
      ; C-f       光标右（forward）
      ; C-b       光标左（backward）
      ; C-p       光标上（previous）
      ; C-n       光标下（next）
      ; C-Alt-f   往右一个单词
      ; C-Alt-b   往左一个单词
      ; C-a       光标移动到行首
      ; C-e       光标移动到行尾
  ; 删除：
      ; C-h       删除光标左边的一个字符
      ; C-d       删除光标右边的一个字符
      ; C-Alt-h   删除光标左边的一个单词
      ; C-Alt-d   删除光标右边的一个单词
      ; C-k       删除从当前光标到行尾的所有内容
      ; C-u       删除从当前光标到行首的所有内容
  ; 重新利用被占用热键：
      ; W-f     C-f（搜索）
      ; W-S-f   C-S-f（全局搜索）
      ; W-n     C-n（新建）
      ; W-a     C-a（全选）


; Autohotkey 中按键列表
  ; https://www.autohotkey.com/docs/KeyList.htm
  ; Ctrl 为 ^
  ; Shift 为 +
  ; Alt 为 !
  ; Win 为 #


; 单引号(')和双引号(")互换
  ; 按下（'）键时输入（"）
  '::"
  return

  ; 按下 Ctrl 再按下（'）键时输入（'）
  $^'::
  Send {'}
  return



; 移动光标
  ; 光标左移
  $^b::
  Send {Left}
  return

  ; 光标右移
  $^f::
  Send {Right}
  return

  ; 光标上移
  $^p::
  Send,{Up}
  return

  ; 光标下移
  $^n::
  Send,{Down}
  return

  ; 光标移动到下个单词
  $^!f::
  Send ^{Right}
  return

  ; 光标移动到上个单词
  $^!b::
  Send ^{Left}
  return

  ; 光标移动到行首
  $^a::
  Send {Home}
  return

  ; 光标移动到行末
  $^e::
  Send {End}
  return



; 删除
  ; 向左删除
  $^h::
  Send {Backspace}
  return

  ; 向右删除
  $^d::
  Send {Del}
  return

  ; 向左删除单词
  $^!h::
  Send ^{Backspace}
  return

  ; 向右删除单词
  $^!d::
  Send ^{Del}
  return

  ; 删除当前位置到行尾
  $^k::
  Send +{End}
  Send {Del}
  return

  ; 删除当前位置到行首
  $^u::
  Send +{Home}
  Send {Backspace}
  return


; 重新利用被占用热键
  ; win+f 代替 C-f（查找）
  $#f::
  Send ^{f}
  return

  ; win+f 代替 C-f（全局查找）
  $#+f::
  Send ^+{f}
  return

  ; win+n 代替 C-n（新建）
  $#n::
  Send ^{n}
  return

  ; win+a 代替 C-a（全选）
  $#a::
  Send ^{a}
  return

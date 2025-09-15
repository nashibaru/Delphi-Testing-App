#include <MsgBoxConstants.au3>

Global $logFile = @ScriptDir & "\TestLog.txt"

Func CreateLog($msg)
    Local $time = @HOUR & ":" & @MIN & ":" & @SEC
    FileWriteLine($logFile, "[" & $time & "] " & $msg)
EndFunc

CreateLog("Start testu Notepad")

Run("notepad.exe")
WinWaitActive("[CLASS:Notepad]")

Send("Hello Delphi + AutoIt")
CreateLog("Wpisano tekst")

Send("!f") ; Alt+F
Send("a")  ; Save As
WinWaitActive("Zapisz jako")
Send(@ScriptDir & "\TestFile.txt{ENTER}")
CreateLog("Zapisano plik")

ProcessClose("notepad.exe")
CreateLog("Zamknieto Notepad")

CreateLog("Koniec testu")

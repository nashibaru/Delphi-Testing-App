Global $logFile = @ScriptDir & "\PaintTest.log"

Func CreateLog($msg)
    Local $time = @HOUR & ":" & @MIN & ":" & @SEC
    FileWriteLine($logFile, "[" & $time & "] " & $msg)
EndFunc

CreateLog("Start testu Paint")

Run("mspaint.exe")
WinWaitActive("[CLASS:MSPaintApp]")
WinSetState("[CLASS:MSPaintApp]", "", @SW_MAXIMIZE)
Log("Paint otwarty i zmaksymalizowany")

MouseClick("left", 536, 80)
MouseClickDrag("left", 100, 200, 300, 400)
Log("Narysowano kwadrat")

MouseClick("left", 460, 80)
MouseClickDrag("left", 300, 300, 900, 300)
Log("Narysowano linie")

Send("^s") 
WinWaitActive("Zapisz jako")
Sleep(500)
Local $filePath = @ScriptDir & "\PaintTest.png"
Send($filePath & "{ENTER}")
CreateLog("Zapisano plik: " & $filePath)

ProcessClose("mspaint.exe")
CreateLog("Paint zamkniety")

CreateLog("Koniec testu Paint")
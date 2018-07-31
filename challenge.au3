#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

#include <MsgBoxConstants.au3>


Local $usernames[144] = ["physical-modified","virtual-existing","virtual-modified", "virtual-modified", "virtual-modified", "physical-modified", "physical-existing", "virtual-existing", "virtual-modified", "physical-existing", "physical-existing", "physical-existing", "virtual-modified", "physical-existing", "virtual-modified", "virtual-existing", "physical-modified", "physical-modified", "virtual-existing", "physical-existing", "virtual-existing", "physical-existing", "virtual-existing", "physical-existing", "virtual-existing", "virtual-modified", "physical-existing", "physical-existing", "physical-existing", "physical-existing", "virtual-modified", "physical-modified", "virtual-existing", "virtual-modified", "virtual-existing", "physical-modified", "physical-existing", "physical-modified", "virtual-modified", "virtual-existing", "virtual-modified", "physical-modified", "physical-modified", "virtual-existing", "physical-modified", "physical-modified", "physical-modified", "physical-modified", "physical-existing", "physical-modified", "physical-existing", "virtual-existing", "virtual-existing", "physical-existing", "virtual-modified", "virtual-existing", "physical-existing", "physical-existing", "virtual-existing", "virtual-existing", "physical-existing", "physical-existing", "virtual-modified", "virtual-modified", "virtual-existing", "physical-existing", "virtual-existing", "physical-modified", "virtual-existing", "physical-existing", "virtual-existing", "virtual-existing", "physical-existing", "virtual-modified", "physical-modified", "physical-modified", "virtual-modified", "physical-modified", "virtual-modified", "virtual-existing", "physical-modified", "virtual-modified", "virtual-existing", "physical-modified", "virtual-modified", "virtual-existing", "virtual-existing", "virtual-existing", "virtual-modified", "physical-existing", "physical-modified", "virtual-modified", "virtual-modified", "physical-existing", "physical-modified", "virtual-existing", "physical-existing", "virtual-modified", "virtual-modified", "virtual-modified", "virtual-existing", "physical-modified", "physical-existing", "virtual-existing", "physical-modified", "virtual-existing", "physical-modified", "physical-existing", "physical-modified", "physical-existing", "virtual-modified", "physical-modified", "physical-modified", "virtual-modified", "virtual-existing", "physical-existing", "virtual-existing", "physical-modified", "virtual-existing", "virtual-modified", "virtual-modified", "physical-existing", "physical-modified", "virtual-modified", "virtual-existing", "virtual-existing", "physical-modified", "physical-existing", "virtual-existing", "virtual-modified", "physical-modified", "physical-existing", "physical-existing", "physical-existing", "physical-existing", "physical-modified", "virtual-modified", "physical-modified", "physical-modified", "virtual-modified", "physical-modified", "virtual-modified", "virtual-modified", "virtual-modified"]

; Local $file_name = "test_abc"


Local $exports_directory = "C:\Users\" & @Username & "\Documents\BB FlashBack Exports\"
Local $box_directory = "C:\Users\" & @Username & "\Box\My Documents\"


FileChangeDir("C:\Users\" & @Username & "\Documents\BB FlashBack Exports\")
Local $hSearch = FileFindFirstFile("*.fbr")
Local $file_name = FileFindNextFile($hSearch)




; Script Start

WinWaitActive("[CLASS:TBBDialog]")
ControlClick("[ACTIVE]","", "TButton3")
WinWaitActive("Save As")
Sleep(1000)
ControlSetText("Save As", "", "Edit1", $file_name & ".fbr")
ControlClick("Save As","", "Button2")

Run("C:\Program Files (x86)\Blueberry Software\FlashBack Express 5\FlashBack Batch Export.exe")
WinWaitActive("FlashBack Express 5 Batch Export")
Sleep(30000)

ControlClick("FlashBack Express 5 Batch Export","", "TButton5")
WinWaitActive("Add FlashBack Movies")

Sleep(1000)

ControlSetText("Add FlashBack Movies", "", "Edit1", $file_name)
Send("!O")
;WinWaitActive("Add FlashBack Movies")
ControlClick("FlashBack Express 5 Batch Export","", "TButton10")
WinWaitActive("AVI Export Options")
ControlClick("AVI Export Options","", "TButton3") ; export button

WinWaitActive("Choose AVI Codec")
ControlClick("Choose AVI Codec","", "TButton5") ; ok


Local $text = WinGetText("FlashBack Express 5 Batch Export")

while Not StringRegExp($text, "exported successfully")
   Sleep(1000)
   $text = WinGetText("FlashBack Express 5 Batch Export")
WEnd
FileMove($exports_directory & $file_name & ".avi", $box_directory & $file_name & ".avi")


MsgBox($MB_OK, "Program result", "success!  Shutting Down in 5 seconds")
Sleep(5)

Shutdown(6)

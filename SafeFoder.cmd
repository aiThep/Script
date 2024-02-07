@ECHO OFF
TITLE SafeFolder by aiThep 
IF EXIST "Hide SafeFolder.{20D04FE0-3AEA-1069-A2D8-08002B30309D}" GOTO Show
IF NOT EXIST "SafeFoder" GOTO Create
REM ไม่แสดงข้อความ
REM ชื่อเรื่อง SafeFolder by aiThep 
REM หากมีโฟลเดอร์ Hide SafeFolder ไปที่แถบ Show
REM หากไม่มีโฟลเดอร์ SafeFoder ไปที่แถบ Create

REN "SafeFoder" "Hide SafeFolder.{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
ATTRIB +H +R +S "Hide SafeFolder.{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
POWERSHELL.EXE -Command "Add-Type -AssemblyName System.Windows.Forms; [void] [System.Windows.Forms.MessageBox]::Show( 'Hide SafeFolder', 'SafeFolder by aiThep', 'OK', 'Information' )"
EXIT
REM เปลี่ยนชื่อโฟลเดอร์ SafeFoder เป็นชื่อ Hide SafeFolder
REM กำหนดคุณลักษณะ +ซ่อน +อ่านอย่างเดียว +ระบบ ให้โฟลเดอร์ Hide SafeFolder
REM แสดงข้อความ Hide SafeFolder
REM ออก

:Create
MD SafeFoder 
POWERSHELL.EXE -Command "Add-Type -AssemblyName System.Windows.Forms; [void] [System.Windows.Forms.MessageBox]::Show( 'Create SafeFolder', 'SafeFolder by aiThep', 'OK', 'Information' )"
EXIT
REM ชื่อแถบ Create
REM สร้างโฟลเดอร์
REM แสดงข้อความ Create SafeFolder
REM ออก

:Show
ATTRIB -H -R -S /S /D "Hide SafeFolder.{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
REN "Hide SafeFolder.{20D04FE0-3AEA-1069-A2D8-08002B30309D}" "SafeFoder"
POWERSHELL.EXE -Command "Add-Type -AssemblyName System.Windows.Forms; [void] [System.Windows.Forms.MessageBox]::Show( 'Show SafeFolder', 'SafeFolder by aiThep', 'OK', 'Information' )"
EXIT
REM ชื่อแถบ Show
REM กำหนดคุณลักษณะ -ซ่อน -อ่านอย่างเดียว -ระบบ /ไฟล์ีทั้งหมด /โฟลเดอร์ทั้งหมด ให้โฟลเดอร์ Hide SafeFolder
REM เปลี่ยนชื่อโฟลเดอร์ Hide SafeFolder เป็นชื่อ SafeFoder
REM แสดงข้อความ Show SafeFolder
REM ออก

@ECHO OFF
TITLE SafeFolder by aiThep
IF EXIST "53616665466F646572" GOTO Show
IF NOT EXIST "SafeFoder" GOTO Create

:Hide
ECHO.
ECHO Hide SafeFolder.
REN "SafeFoder" "53616665466F646572"
ATTRIB  +H +R +S "53616665466F646572"
GOTO End

:Create
MD SafeFoder
ECHO.
ECHO Create SafeFolder.
GOTO End

:Show
ECHO.
ECHO Show SafeFolder.
ATTRIB  -H -R -S /S /D "53616665466F646572"
REN "53616665466F646572" "SafeFoder"
GOTO End

:End
ECHO Completed in 3 seconds.
TIMEOUT /T 3
EXIT
@ECHO OFF
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER

:CONFIRM
echo Are you sure you want to lock the folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==N goto END
if %cho%==n goto END
echo Invalid choice. Please type Y or N.
goto CONFIRM

:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked successfully.
goto End

:UNLOCK
echo Enter password to unlock folder:
set/p "pass=>"
if NOT %pass%==YOUR_PASSWORD_HERE goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder unlocked successfully.
goto End

:FAIL
echo Invalid password!
goto end

:MDLOCKER
md Private
echo Private folder created successfully.
goto End

:End
pause
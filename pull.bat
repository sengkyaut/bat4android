@echo off
set PATH=%CD%;%PATH%;
adb shell ls /sdcard/ADM/ >myplist.txt
for /F "tokens=*" %%A in (myplist.txt) do call :pull "%%A"
del /f /q myplist.txt
goto :EOF

:pull
echo Do you want to pull %1
set c=
set /P c=Are you sure [Y/N]?[Y/N]?
if /I "%c%"=="y" (
echo Start pulling...
adb pull -p /sdcard/ADM/%1
)

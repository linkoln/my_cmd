@echo off
setlocal enabledelayedexpansion

set foundpath=%path%
set removepath=%path%

set count=0

E:
cd %foundpath%
for /R %%I in (*.dll) do (
set /a count+=1
set fn=%%~nI
set fn=%removepath%\!fn!.dll
del !fn!
echo del !fn!
)
cd %removepath%
echo %count%
pause
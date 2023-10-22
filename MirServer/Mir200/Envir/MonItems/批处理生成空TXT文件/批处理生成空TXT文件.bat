@echo off
pushd "%~dp0"
if exist ".\0_所有怪物.txt" (
   md ".\列表" >nul 2>nul
   for /f "delims=" %%a in ('type 0_所有怪物.txt') do (
      cd.>".\列表\%%a.txt"
   )
)
popd
exit
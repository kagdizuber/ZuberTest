bash -c "Title HOST: Installing updates on %computername%"
echo %computername%
set Server=\\SERVERNAME or PATH\msifolder

:select
cls
echo Select one of the following MSI install folders for installation task.
echo.
dir "%Server%" /AD /ON /B
echo.
set /P "MSI=Please enter the MSI folder to install: "
set "Package=%Server%\%MSI%\%MSI%.msi"

if not exist "%Package%" (
   echo.
   echo The entered folder/MSI file does not exist ^(typing mistake^).
   echo.
   setlocal EnableDelayedExpansion
   set /P "Retry=Try again [Y/N]: "
   if /I "!Retry!"=="Y" endlocal & goto select
   endlocal
   goto :EOF
)

echo.
echo Selected installation: %MSI%
echo.
echo.

:verify
echo Is This Correct?
echo.
echo.
echo    0: ABORT INSTALL
echo    1: YES
echo    2: NO, RE-SELECT
echo.
set /p "choice=Select YES, NO or ABORT? [0,1,2]: "
if [%choice%]==[0] goto :EOF
if [%choice%]==[1] goto yes
goto select

:yes
echo.
echo Running %MSI% installation ...
start "Install MSI" /wait "%SystemRoot%\system32\msiexec.exe" /i /quiet "%Package%"
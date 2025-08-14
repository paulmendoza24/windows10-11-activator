@echo off
color 0a
title Windows 10 Activation Script

echo ===============================
echo   WINDOWS 10 ACTIVATION TOOL
echo        By Paul Mendoza
echo ===============================
echo.
echo Select Windows edition to activate:
echo 1. Windows 10 Home
echo 2. Windows 10 Home N
echo 3. Windows 10 Pro
echo 4. Windows 10 Pro N
echo 5. Windows 10 Education
echo 6. Windows 10 Education N
echo 7. Windows 10 Enterprise
echo 8. Windows 10 Enterprise N
echo.

set /p choice="Enter your choice (1-8): "

if "%choice%"=="1" set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
if "%choice%"=="2" set key=3KHY7-WNT83-DGQKR-F7HPR-844BM
if "%choice%"=="3" set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
if "%choice%"=="4" set key=MH37W-N47XK-V7XM9-C7227-GCQG9
if "%choice%"=="5" set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
if "%choice%"=="6" set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
if "%choice%"=="7" set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
if "%choice%"=="8" set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4

if not defined key (
    echo Invalid choice. Exiting...
    pause
    exit /b
)

echo Installing key: %key%
slmgr /ipk %key%
echo.

echo Setting KMS server...
slmgr /skms kms8.msguides.com
echo.

echo Activating Windows...
slmgr /ato
echo.

echo ===============================
echo   Activation process complete
echo ===============================
pause

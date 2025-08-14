@echo off
color 0a
title Windows 11 Activation Script 

echo ===============================
echo   WINDOWS 11 ACTIVATION TOOL
echo        By Paul Mendoza
echo ===============================
echo.
echo Select Windows edition to install key:
echo  1. Windows 11 Home
echo  2. Windows 11 Home N
echo  3. Windows 11 Pro
echo  4. Windows 11 Pro N
echo  5. Windows 11 Education
echo  6. Windows 11 Education N
echo  7. Windows 11 Enterprise
echo  8. Windows 11 Enterprise N
echo  9. Windows 11 Home Single Language
echo 10. Windows 11 Home Country Specific
echo 11. Windows 11 Pro Workstations
echo 12. Windows 11 Pro Workstations N
echo 13. Windows 11 Pro Education
echo 14. Windows 11 Enterprise G
echo 15. Windows 11 Enterprise G N
echo 16. Windows 11 Enterprise LTSC 2019
echo 17. Windows 11 Enterprise N LTSC 2019
echo.

set /p choice="Enter your choice (1-17): "

if "%choice%"=="1"  set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
if "%choice%"=="2"  set key=3KHY7-WNT83-DGQKR-F7HPR-844BM
if "%choice%"=="3"  set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
if "%choice%"=="4"  set key=MH37W-N47XK-V7XM9-C7227-GCQG9
if "%choice%"=="5"  set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
if "%choice%"=="6"  set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
if "%choice%"=="7"  set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
if "%choice%"=="8"  set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
if "%choice%"=="9"  set key=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
if "%choice%"=="10" set key=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
if "%choice%"=="11" set key=NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
if "%choice%"=="12" set key=9FNHH-K3HBT-3W4TD-6383H-6XYWF
if "%choice%"=="13" set key=6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
if "%choice%"=="14" set key=YYVX9-NTFWV-6MDM3-9PT4T-4M68B
if "%choice%"=="15" set key=44RPN-FTY23-9VTTB-MP9BX-T84FV
if "%choice%"=="16" set key=M7XTQ-FN8P6-TTKYV-9D4CC-J462D
if "%choice%"=="17" set key=92NFX-8DJQP-P6BBQ-THF9C-7CG2H

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

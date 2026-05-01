@echo off
setlocal
echo ----------------------------------------------------
echo TechMaster Financials - Local Server
echo ----------------------------------------------------
echo.
echo Oba ge phone eken meka access kirimata:
echo 1. Phone eka saha me computer eka ekama WiFi ekata connect vi thibiya yuthuya.
echo 2. Phone eke web browser eka (Chrome/Safari) open karanna.
echo 3. Pahatha thiyena "http://" address eka eke type karanna:
echo.

:: Get Local IP Address
for /f "tokens=14" %%a in ('ipconfig ^| findstr IPv4') do set ip=%%a

echo Address eka: http://%ip%:8000
echo.
echo Phone eken open kalata pasuwa, browser eke menu eken "Add to Home Screen" select karanna.
echo Ewitha eka normal app ekak widihata phone eke home screen ekata add wevi.
echo.
echo (Server eka nawathweemata me window eka close karanna)
echo ----------------------------------------------------
echo.

python -m http.server 8000
pause

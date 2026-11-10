@echo off
rem Rebuilds Lital-Rotter-CV.pdf from index.html (run after every content change)
cd /d "%~dp0"
set "EDGE=C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=C:\Program Files\Microsoft\Edge\Application\msedge.exe"
"%EDGE%" --headless=new --disable-gpu --no-pdf-header-footer --virtual-time-budget=5000 --print-to-pdf="%~dp0Lital-Rotter-CV.pdf" "file:///%~dp0index.html"
echo.
echo Done: Lital-Rotter-CV.pdf
pause

@echo off
cd /d "%~dp0"
set GIT=C:\Users\Administrator\.workbuddy\binaries\PortableGit\versions\1.3.0\cmd\git.exe

echo.
echo ===== linklink publish to Gitee =====
echo.
echo [1/3] add changes...
"%GIT%" add -A
echo [2/3] commit...
"%GIT%" commit -m "update" -q
echo [3/3] push to Gitee (backup)...
"%GIT%" push gitee main

echo.
echo ================================================
echo   If you see  main -^> main  above = SUCCESS!
echo   (Gitee is only a backup now; main site is GitHub Pages)
echo ================================================
pause

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
echo [3/3] push to Gitee (first time will ask login)...
"%GIT%" push -u origin master

echo.
echo ================================================
echo   If you see  master -^> master  above = SUCCESS!
echo   Next: Gitee web - Services - Gitee Pages - Start
echo ================================================
pause

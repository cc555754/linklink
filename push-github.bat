@echo off
cd /d "%~dp0"
set GIT=C:\Users\Administrator\.workbuddy\binaries\PortableGit\versions\1.3.0\cmd\git.exe
set USER=YOUR_GITHUB_USERNAME
for /f "tokens=*" %%t in ('findstr /v /b "#" github_token.txt') do set TOKEN=%%t
"%GIT%" remote set-url github https://%TOKEN%@github.com/%USER%/linklink.git
"%GIT%" add -A
"%GIT%" commit -m "update" -q
"%GIT%" push github main

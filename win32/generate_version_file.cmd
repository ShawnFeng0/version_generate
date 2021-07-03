@echo off

cd %~dp0
set /P GIT_DESCRIBE=<..\git_describe.txt

cd ..\..\
for /F %%i in ('%GIT_DESCRIBE%') do ( set VERSION=%%i)
echo #define REPO_VERSION "%VERSION%" > .\repo_version.h

echo Version information: %VERSION%
echo Version information header file path: %cd%\repo_version.h

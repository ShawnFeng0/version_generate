cd %~dp0..\..\
for /F %%i in ('git describe --dirty --always --tags') do ( set VERSION=%%i)
echo #define REPO_VERSION "%VERSION%" > ./repo_version.h
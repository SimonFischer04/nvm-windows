for /f %%i in ('"%GOBIN%\nvm.exe" version') do set AppVersion=%%i
echo nvm.exe v%AppVersion% built.

for %%a in ("%GOBIN%") do (buildtools\zip.exe -j -9 -r "%DIST%\nvm-noinstall.zip" "%CD%\LICENSE" %%a\* -x "%GOBIN%\nodejs.ico")

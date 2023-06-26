@echo off

cd /D "%~dp0"

set PATH=%PATH%;%SystemRoot%\system32

@rem Uncomment the two following lines to enable OOBABOOGA_FLAGS settings between Windows and WSL
@rem set OOBABOOGA_FLAGS=--chat
@rem set WSLENV=%WSLENV%:OOBABOOGA_FLAGS

@rem sed -i 's/\x0D$//' ./wsl.sh converts newlines to unix format in the wsl script
call wsl -e bash -lic "sed -i 's/\x0D$//' ./wsl.sh; source ./wsl.sh"

:end
pause

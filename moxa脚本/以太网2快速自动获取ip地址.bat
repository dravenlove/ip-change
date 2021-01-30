%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
netsh interface ip set address "以太网2" dhcp
netsh interface ip set dns "以太网2" dhcp	
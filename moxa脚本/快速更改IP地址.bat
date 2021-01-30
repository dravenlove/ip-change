%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
@echo off
set /p ipaddress=请输入ip地址，按ENTER确定：

cls
echo 1 以太网
echo 2 以太网1
echo 3 以太网2
echo 4 以太网3
echo 5 WLAN
echo 6 蓝牙网络连接

set /p input=请输入序号，按ENTER确定：
if "%input%"=="1" goto 1 
if "%input%"=="2" goto 2 
if "%input%"=="3" goto 3 
if "%input%"=="4" goto 4 
if "%input%"=="5" goto 5 
if "%input%"=="6" goto 6 

:1
netsh interface ip set address "以太网" static %ipaddress% 255.255.255.0
goto s1

:2
netsh interface ip set address "以太网1" static %ipaddress% 255.255.255.0
goto s1	

:3
netsh interface ip set address "以太网2" static %ipaddress% 255.255.255.0	
goto s1

:4
netsh interface ip set address "以太网3" static %ipaddress% 255.255.255.0	
goto s1

:5
netsh interface ip set address "WLAN" static %ipaddress% 255.255.255.0
goto s1

:6
netsh interface ip set address "蓝牙网络连接" static %ipaddress% 255.255.255.0		
goto s1

:s1
exit濈墮缃戠粶杩炴帴" static %ipaddress% 255.255.255.0		
goto s1

:s1
exit
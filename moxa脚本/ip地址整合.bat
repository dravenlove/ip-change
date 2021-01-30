%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
@echo off

echo 1 快速自动获取ip地址。
echo 2 快速更改ip地址。
set /p input1=请输入序号，按ENTER确定：

if "%input1%"=="1" goto a1 
if "%input1%"=="2" goto a2 


:a1
cls
echo 1 以太网
echo 2 以太网1
echo 3 以太网2
echo 4 以太网3
echo 5 WLAN
echo 6 蓝牙网络连接
echo 7 全部

set /p input=请输入序号，按ENTER确定：
if "%input%"=="1" goto 1 
if "%input%"=="2" goto 2 
if "%input%"=="3" goto 3 
if "%input%"=="4" goto 4 
if "%input%"=="5" goto 5 
if "%input%"=="6" goto 6 
if "%input%"=="7" goto 7

:1
netsh interface ip set address "以太网" dhcp
netsh interface ip set dns "以太网" dhcp	
goto s1

:2
netsh interface ip set address "以太网1" dhcp
netsh interface ip set dns "以太网1" dhcp
goto s1	

:3
netsh interface ip set address "以太网2" dhcp
netsh interface ip set dns "以太网2" dhcp	
goto s1

:4
netsh interface ip set address "以太网3" dhcp
netsh interface ip set dns "以太网3" dhcp	
goto s1

:5
netsh interface ip set address "WLAN" dhcp
netsh interface ip set dns "WLAN" dhcp
goto s1

:6
netsh interface ip set address "蓝牙网络连接" dhcp
netsh interface ip set dns "蓝牙网络连接" dhcp		
goto s1

:7
netsh interface ip set address "以太网" dhcp
netsh interface ip set dns "以太网" dhcp	
netsh interface ip set address "以太网1" dhcp
netsh interface ip set dns "以太网1" dhcp
netsh interface ip set address "以太网2" dhcp
netsh interface ip set dns "以太网2" dhcp
netsh interface ip set address "以太网3" dhcp
netsh interface ip set dns "以太网3" dhcp
netsh interface ip set address "WLAN" dhcp
netsh interface ip set dns "WLAN" dhcp	
goto s1

:a2
set /p ipaddress=请输入ip地址，按ENTER确定：
echo 你输入的ip地址为%ipaddress%。

cls
echo 1 以太网
echo 2 以太网1
echo 3 以太网2
echo 4 以太网3
echo 5 WLAN
echo 6 蓝牙网络连接

set /p input=请输入序号，按ENTER确定：
if "%input%"=="1" goto 11 
if "%input%"=="2" goto 22
if "%input%"=="3" goto 33
if "%input%"=="4" goto 44
if "%input%"=="5" goto 55
if "%input%"=="6" goto 66

:11
netsh interface ip set address "以太网" static %ipaddress% 255.255.255.0
goto s1

:22
netsh interface ip set address "以太网1" static %ipaddress% 255.255.255.0
goto s1	

:33
netsh interface ip set address "以太网2" static %ipaddress% 255.255.255.0	
goto s1

:44
netsh interface ip set address "以太网3" static %ipaddress% 255.255.255.0	
goto s1

:55
netsh interface ip set address "WLAN" static %ipaddress% 255.255.255.0
goto s1

:66
netsh interface ip set address "蓝牙网络连接" static %ipaddress% 255.255.255.0		
goto s1


:s1
exit
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit cd /d "%~dp0"
@echo off

cls
echo 1 ��̫��
echo 2 ��̫��1
echo 3 ��̫��2
echo 4 ��̫��3
echo 5 WLAN
echo 6 ������������

set /p input=��������ţ���ENTERȷ����
if "%input%"=="1" goto 1 
if "%input%"=="2" goto 2 
if "%input%"=="3" goto 3 
if "%input%"=="4" goto 4 
if "%input%"=="5" goto 5 
if "%input%"=="6" goto 6 

:1
netsh interface ip set address "��̫��" dhcp
netsh interface ip set dns "��̫��" dhcp	
goto s1

:2
netsh interface ip set address "��̫��1" dhcp
netsh interface ip set dns "��̫��1" dhcp
goto s1	

:3
netsh interface ip set address "��̫��2" dhcp
netsh interface ip set dns "��̫��2" dhcp	
goto s1

:4
netsh interface ip set address "��̫��3" dhcp
netsh interface ip set dns "��̫��3" dhcp	
goto s1

:5
netsh interface ip set address "WLAN" dhcp
netsh interface ip set dns "WLAN" dhcp
goto s1

:6
netsh interface ip set address "������������" dhcp
netsh interface ip set dns "������������" dhcp		
goto s1


:s1
exit
@echo off
setlocal enabledelayedexpansion

title Test-tools

for /f "tokens=*" %%i in ('python -V 2^>^&1') do (
    set python_version=%%i
)

if "%python_version%"=="" (
    echo �˽ű�Ϊʹ��python����http�������δ��װPython���������Ƚ��а�װPython������ʹ�ô˽ű���
    pause
    exit /b
)

cls
echo.
echo ----------------------------------------------------
echo  ����ӭʹ��Test-tools��
echo.
echo  ���ߣ�Acczdy
echo.
echo  ��Ŀ��ַ��https://github.com/Acczdy/Test-tools
echo.
echo  ��ǰPython�汾Ϊ��%python_version%
echo.
echo  �밴��Ҫ��ѡ���Ӧѡ��ɣ�
echo ----------------------------------------------------
echo.
echo 	1. �Զ���˿ڣ�
echo.
echo 	2. ֱ���������� 
echo.
echo ----------------------------------------------------
echo.
set /p option=����������Ҫִ�е������Ӧ���ּ��ɣ���
echo.

echo %python_version% | findstr /C:"Python 2" > nul
if %errorlevel% equ 0 (
    set python_version=2
) else (
    set python_version=3
)


if "%option%"=="1" (
    set /p port=������˿ں�: 
    if %python_version% equ 2 (
        set "python_command=python -m SimpleHTTPServer !port!"
    ) else (
        set "python_command=python -m http.server !port!"
    )
) else (
    if %python_version% equ 2 (
        set "python_command=python -m SimpleHTTPServer"
    ) else (
        set "python_command=python -m http.server"
    )
)

start "Test-tools : http.server" cmd /c "echo. && echo ʹ��Test-tools�����У��뱣�ִ˴��ڿ���! && echo. && %python_command%"
if "%option%"=="1" (
    start http://127.0.0.1:!port!
) else (
    start http://127.0.0.1:8000
)

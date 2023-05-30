@echo off
setlocal enabledelayedexpansion

title Test-tools

for /f "tokens=*" %%i in ('python -V 2^>^&1') do (
    set python_version=%%i
)

if "%python_version%"=="" (
    echo 此脚本为使用python开启http服务，如果未安装Python环境，请先进行安装Python环境再使用此脚本。
    pause
    exit /b
)

cls
echo.
echo ----------------------------------------------------
echo  【欢迎使用Test-tools】
echo.
echo  作者：Acczdy
echo.
echo  项目地址：https://github.com/Acczdy/Test-tools
echo.
echo  当前Python版本为：%python_version%
echo.
echo  请按需要求选择对应选项即可：
echo ----------------------------------------------------
echo.
echo 	1. 自定义端口：
echo.
echo 	2. 直接启动服务： 
echo.
echo ----------------------------------------------------
echo.
set /p option=请输入您所要执行的命令（对应数字即可）：
echo.

echo %python_version% | findstr /C:"Python 2" > nul
if %errorlevel% equ 0 (
    set python_version=2
) else (
    set python_version=3
)


if "%option%"=="1" (
    set /p port=请输入端口号: 
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

start "Test-tools : http.server" cmd /c "echo. && echo 使用Test-tools过程中，请保持此窗口开启! && echo. && %python_command%"
if "%option%"=="1" (
    start http://127.0.0.1:!port!
) else (
    start http://127.0.0.1:8000
)

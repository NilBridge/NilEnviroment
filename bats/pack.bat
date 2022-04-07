chcp 65001
@echo off
set /p v=[%date% %time%] 请输入NilBridge版本号：

cd ../

echo [%date% %time%] 开始打包Release_%v%.zip >> logs.txt

if not exist node/node.exe (echo 无法找到node.exe，请把node.exe放到node文件夹 && pause && exit)

if not exist Release_%v% md Release_%v%

echo 正在复制文件...请稍候

: 如果要复制.git文件夹就加上 /h 参数
xcopy nilbridge Release_%v% /e /i /Q /y /exclude:%cd%\configs\pack.config

echo [%date% %time%] 正在复制node.exe

copy node/node.exe Release_%v%/node.exe

echo [%date% %time%] 正在压缩...

cd 7z

7za.exe a ../Release_%v%.zip  ../Release_%v%

cd ../

echo [%date% %time%] 压缩成功，请确认是否删除Release_%v%文件夹

rmdir Release_%v% /s

echo [%date% %time%] 打包了Release_%v%.zip >> logs.txt

pause
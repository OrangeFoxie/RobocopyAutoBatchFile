@echo off 

set hr=%time:~0,2%
set mi=%time:~3,2%
set se=%time:~6,2%

set dd=%date:~0,2%
set mo=%date:~3,2%
set yy=%date:~6,4%

echo The script's runing right now ;7
echo Using robocopy which is included in window 10
echo Today's TIME: %TIME%, DATE: %DATE%
echo Vui nha :3

echo "........................Thong tin copy........................"
set /P link1=[Thu muc can copy]:
set /P link2=[Thu muc dich]:
set /P logLink=[Log luu tai]:
set logName=%dd%-%mo%-%yy%_(%hr%h%mi%m%se%s).log
echo "........................Dang ghi log vao........................"

robocopy %link1% %link2% /E /R:5 /W:1 /MT:8 /log:%loglink%\%logName%

echo "........................File log da ghi xong........................"
echo ">>>                             >.<                              <<<"
echo "........................!!! Copy is done !!!........................"
echo ">>>                             UwU                              <<<"
pause




::set link1=C:\Users\Hito\Desktop\1 
::set link2=C:\Users\Hito\Desktop\2
::set logLink=/log:C:\Users\Hito\Desktop\log\%dd%-%mo%-%yy%_(%hr%h%mi%m%se%s).log
::robocopy C:\Users\Hito\Desktop\1 C:\Users\Hito\Desktop\2 /E /R:5 /W:1 /MT:8 /log:C:\Users\Hito\Desktop\log\%dd%-%mo%-%yy%_(%hr%h%mi%m%se%s).log

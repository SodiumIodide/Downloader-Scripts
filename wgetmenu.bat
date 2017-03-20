@echo off
color 90
cls

:menu

ECHO.
ECHO ...............................................
ECHO What type of files do you want to download?
ECHO ...............................................
ECHO.
ECHO 1 - pictures
ECHO 2 - music
ECHO 3 - video
ECHO 4 - ebooks
ECHO 5 - software
ECHO 6 - custom
ECHO 7 - exit
ECHO.

SET /P M=What do you want?
IF %M%==1 GOTO pictures
IF %M%==2 GOTO music
IF %M%==3 GOTO video
IF %M%==4 GOTO ebooks
IF %M%==5 GOTO software
IF %M%==6 GOTO custom
IF %M%==7 GOTO EOF


:pictures
echo.
echo "Enter a website to download"
echo.
set /p website= Enter website:  
cls
wget --directory-prefix=pictures --random-wait --no-directories --recursive --level 1 --no-clobber -e robots=off --accept jpg,gif,png,jpeg %website%
GOTO MENU


:music
echo.
echo "Enter a website to download"
echo.
set /p website= Enter website:  
cls
wget --directory-prefix=music --random-wait --no-directories --recursive --level 1 --no-clobber --accept mp3,wav,ac3,ogg,flac,wma,m4a %website%
GOTO MENU


:video
echo.
echo "Enter a website to download"
echo.
set /p website= Enter website:  
cls
wget --directory-prefix=video --random-wait --no-directories --recursive --level 1 --no-clobber --accept mkv,mp4,avi,mov,mpg,wmv %website%
GOTO MENU


:ebooks
echo.
echo "Enter a website to download"
echo.
set /p website= Enter website:  
cls
wget --directory-prefix=ebooks/ --random-wait --no-directories --recursive --level 1 --no-clobber --debug --accept pdf,mobi,cbz,cbr,epub,pdf,rtf,doc,docx %website%
GOTO MENU


:software
echo.
echo "Enter a website to download"
echo.
set /p website= Enter website:  
cls
wget --directory-prefix=software --random-wait --no-directories --recursive --level 1 --no-clobber --accept exe,iso,tar|rar,zip,apk %website%
GOTO MENU

:custom
echo.
echo "Enter a website to download"
echo.
set /p website= Enter website:
SET /P custom= Enter a custom search with wildcards  
cls
wget --directory-prefix=custom --random-wait --no-directories --recursive --level 1 --no-clobber --accept %custom% %website%
GOTO MENU


:EOF
echo off
REM restart IIS 
net stop w3svc
net start w3svc

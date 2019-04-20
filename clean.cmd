ECHO OFF
setlocal
ECHO.
ECHO This will delete all the bin and obj folders, so be careful
ECHO I expect to be running in a solution folder
ECHO e.g.
ECHO.
ECHO +---SolutionFolder (you are here)
ECHO ^|   +---Project1
ECHO ^|       +---bin  (i get cleaned)
ECHO ^|       +---obj  (i get cleaned)
ECHO ^|       +---OtherFolder
ECHO ^|       JustAfile.cs
ECHO ^|       Project1.csproj
ECHO ^|   +---SomeOtherProject2
ECHO ^|       +---bin  (i get cleaned)
ECHO ^|       +---obj  (i get cleaned)
ECHO ^|       +---SomeOtherFolder
ECHO ^|       JustAfile.cs
ECHO ^|       Project1.csproj
ECHO MySolution.sln
ECHO. 
ECHO. 

SET AREYOUSURE=N
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

ECHO ON
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S bin') DO RMDIR /S /Q "%%G"
FOR /F "tokens=*" %%G IN ('DIR /B /AD /S obj') DO RMDIR /S /Q "%%G"

REM TO view effect, if using directly in cmd then use %G instead of %%G
REM FOR /F "tokens=*" %%G IN ('DIR /B /AD /S bin') DO ECHO "%%G"

:END
endlocal

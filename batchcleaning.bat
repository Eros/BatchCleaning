@echo off
CLS
C:
CD \
ECHO WARNING: Cleaning files
ECHO Remopving all temp files
Del *.tmp /s /q
Del *.tmp /s /q

ECHO Removing log files
Del *.log /s /q

CLS

REM Defragmenting C: drive
defrag c: /h /x 

REM Checking integrity of system files
SFC /SCANNOW
CLS
exit 
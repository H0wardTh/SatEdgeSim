@echo off&setlocal EnableDelayedExpansion

set a=1

for /f "delims=" %%i in ('dir /b *.csv') do (

	if not "%%~ni"=="%~n0" (if !a! LSS 10 (ren "%%i" "cloud!a!.csv") else ren "%%i" "cloud!a!.csv"

	set/a a+=1

	)
	
)
SET SED=C:\msys64\usr\bin\sed.exe

FOR /F "TOKENS=1 DELIMS=-" %%I IN ("%APPVEYOR_PROJECT_NAME%") DO (
	FOR %%J IN (%%I\sed.h) DO (
	FOR %%K IN (TRUE FALSE) DO (
		%SED% "/#define %%K/i #ifndef %%K" -i %%J
		%SED% "/#define %%K/a #endif" -i %%J
	))
)

CALL edksetup.bat
build

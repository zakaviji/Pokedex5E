@ECHO OFF
SETLOCAL
SET "sourcedir=D:\Repo\Pokedex5E\assets\textures"
FOR /r "%sourcedir%" %%a IN (*.png) DO (
 "D:\Repo\pokemon5e.github.io\_source\asdasd\optipng.exe" -log C:\optipng.log -force -v -o2 "%%a"
)
pause
GOTO :EOF
@echo off
setlocal
cd /d "%~dp0"
if not exist "Unbounded-VariableFont_wght.ttf" (
  echo Copy Unbounded-VariableFont_wght.ttf into this folder first.
  pause
  exit /b 1
)
py -m pip install fonttools brotli
if errorlevel 1 goto :error
py -m fontTools.subset "Unbounded-VariableFont_wght.ttf" --output-file="Unbounded-VariableFont_wght.woff2" --flavor=woff2 --layout-features="*" --unicodes="*"
if errorlevel 1 goto :error
echo.
echo Created: Unbounded-VariableFont_wght.woff2
pause
exit /b 0
:error
echo.
echo Conversion failed. Check that Python is installed and available through the py command.
pause
exit /b 1

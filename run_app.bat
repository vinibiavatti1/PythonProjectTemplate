@echo off

REM Check env
if not exist .\.venv\Scripts\python.exe (
    echo The environment was not installed. Please, execute run_setup.bat.
    pause
    exit
)

REM Activate environment
echo Activating virtual environment...
cd .\.venv\Scripts
call activate.bat
echo Environment activated

REM Running application
echo Running application...
cd ..\..
python main.py
pause

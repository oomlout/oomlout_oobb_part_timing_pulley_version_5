@echo off
setlocal

rem Reusable bootstrap for oomlout_oobb_part_*_version_5 repositories.
rem Run this file from the repository root after cloning the project.

set "PROJECT_ROOT=%~dp0"
set "DEPENDENCY_ROOT=%PROJECT_ROOT%.dependencies"
set "VENV=%PROJECT_ROOT%.venv"
set "OOBB_REPO=%DEPENDENCY_ROOT%\oomlout_oobb_version_5"
set "OOMP_REPO=%DEPENDENCY_ROOT%\oomlout_oomp_version_5"

where git >nul 2>nul
if errorlevel 1 (
    echo ERROR: Git is required. Install Git for Windows and run this file again.
    exit /b 1
)

if not exist "%DEPENDENCY_ROOT%" mkdir "%DEPENDENCY_ROOT%"

call :clone_or_update "https://github.com/oomlout/oomlout_oobb_version_5.git" "%OOBB_REPO%"
if errorlevel 1 exit /b 1
call :clone_or_update "https://github.com/oomlout/oomlout_oomp_version_5.git" "%OOMP_REPO%"
if errorlevel 1 exit /b 1

where py >nul 2>nul
if not errorlevel 1 (
    py -3 -m venv "%VENV%"
) else (
    where python >nul 2>nul
    if errorlevel 1 (
        echo ERROR: Python 3 is required. Install it and enable the py launcher or PATH.
        exit /b 1
    )
    python -m venv "%VENV%"
)
if errorlevel 1 exit /b 1

set "PYTHON=%VENV%\Scripts\python.exe"
"%PYTHON%" -m pip install --upgrade pip
if errorlevel 1 exit /b 1
"%PYTHON%" -m pip install -r "%PROJECT_ROOT%requirements.txt"
if errorlevel 1 exit /b 1

rem Install dependencies declared by either cloned library, when present.
if exist "%OOBB_REPO%\requirements.txt" "%PYTHON%" -m pip install -r "%OOBB_REPO%\requirements.txt"
if errorlevel 1 exit /b 1
if exist "%OOMP_REPO%\requirements.txt" "%PYTHON%" -m pip install -r "%OOMP_REPO%\requirements.txt"
if errorlevel 1 exit /b 1

rem Imports resolve directly from the two cloned v5 repositories.
set "PYTHONPATH=%OOBB_REPO%;%OOMP_REPO%;%PYTHONPATH%"
pushd "%PROJECT_ROOT%"
"%PYTHON%" install_oobb_components.py
if errorlevel 1 (
    popd
    exit /b 1
)
"%PYTHON%" make_all.py %*
set "BUILD_RESULT=%ERRORLEVEL%"
popd
if not "%BUILD_RESULT%"=="0" exit /b %BUILD_RESULT%

echo.
echo Setup and build finished. Activate the environment with:
echo   call .venv\Scripts\activate.bat
exit /b 0

:clone_or_update
if exist "%~2\.git" (
    git -C "%~2" config core.longpaths true
    if errorlevel 1 exit /b 1
    echo Updating %~2
    git -C "%~2" pull --ff-only
) else (
    if exist "%~2" (
        echo ERROR: %~2 exists but is not a Git checkout.
        exit /b 1
    )
    echo Cloning %~1
    git -c core.longpaths=true clone "%~1" "%~2"
    if errorlevel 1 exit /b 1
    git -C "%~2" config core.longpaths true
)
exit /b %ERRORLEVEL%

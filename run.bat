@echo off
cd "%~dp0"

ffmpeg -L 2> NUL > NUL
if errorlevel 1 (
  echo Install ffmpeg first
  exit 1
)

if not exist .venv\scripts\activate (
  echo Creating virtualenv
  python -m venv .venv
  call .venv\Scripts\activate.bat
  pip install -r requirements-windows.txt
) else (
  call .venv\Scripts\activate.bat
)

python main.py "$@"

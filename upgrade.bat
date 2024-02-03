@echo off
cd "%~dp0"

call .venv\Scripts\activate.bat

pip install --upgrade ^
    diffusers ^
    gradio ^
    torch ^
    transformers

:: Not needed for the demo: accelerate, optimum

pip freeze > requirements-windows.txt

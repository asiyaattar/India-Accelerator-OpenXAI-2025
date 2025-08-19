@echo off
echo ========================================
echo LearnAI - Ollama Setup Script
echo ========================================
echo.

echo Checking if Ollama is installed...
ollama --version >nul 2>&1
if %errorlevel% == 0 (
    echo ✓ Ollama is already installed!
    echo.
    echo Starting Ollama service...
    start "" ollama serve
    timeout /t 3 /nobreak >nul
    
    echo.
    echo Pulling required AI models...
    echo Pulling llama3.2:1b model...
    ollama pull llama3.2:1b
    
    echo.
    echo Pulling gemma:2b model...
    ollama pull gemma:2b
    
    echo.
    echo ✓ Setup complete! Ollama is now running.
    echo ✓ You can now use the LearnAI application.
    echo.
    echo To stop Ollama later, run: ollama stop
    pause
) else (
    echo ✗ Ollama is not installed.
    echo.
    echo Please install Ollama first:
    echo 1. Go to https://ollama.ai
    echo 2. Download and install Ollama for Windows
    echo 3. Run this script again
    echo.
    pause
) 
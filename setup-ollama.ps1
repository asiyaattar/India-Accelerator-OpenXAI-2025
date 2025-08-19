Write-Host "========================================" -ForegroundColor Cyan
Write-Host "LearnAI - Ollama Setup Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Ollama is installed
try {
    $ollamaVersion = ollama --version 2>$null
    if ($ollamaVersion) {
        Write-Host "✓ Ollama is already installed! Version: $ollamaVersion" -ForegroundColor Green
        Write-Host ""
        
        Write-Host "Starting Ollama service..." -ForegroundColor Yellow
        Start-Process -FilePath "ollama" -ArgumentList "serve" -WindowStyle Hidden
        Start-Sleep -Seconds 3
        
        Write-Host ""
        Write-Host "Pulling required AI models..." -ForegroundColor Yellow
        Write-Host "Pulling llama3.2:1b model..." -ForegroundColor Yellow
        ollama pull llama3.2:1b
        
        Write-Host ""
        Write-Host "Pulling gemma:2b model..." -ForegroundColor Yellow
        ollama pull gemma:2b
        
        Write-Host ""
        Write-Host "✓ Setup complete! Ollama is now running." -ForegroundColor Green
        Write-Host "✓ You can now use the LearnAI application." -ForegroundColor Green
        Write-Host ""
        Write-Host "To stop Ollama later, run: ollama stop" -ForegroundColor Cyan
    }
} catch {
    Write-Host "✗ Ollama is not installed." -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Ollama first:" -ForegroundColor Yellow
    Write-Host "1. Go to https://ollama.ai" -ForegroundColor White
    Write-Host "2. Download and install Ollama for Windows" -ForegroundColor White
    Write-Host "3. Run this script again" -ForegroundColor White
    Write-Host ""
    Write-Host "Note: You may need to restart your terminal after installation." -ForegroundColor Yellow
}

Write-Host ""
Read-Host "Press Enter to continue" 
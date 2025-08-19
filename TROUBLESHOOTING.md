# LearnAI Troubleshooting Guide

## 500 Internal Server Error - Solution

If you're experiencing a 500 Internal Server Error, it's likely because the AI model server (Ollama) is not running. Here's how to fix it:

### Quick Fix

1. **Install Ollama** from [https://ollama.ai](https://ollama.ai)
2. **Run the setup script**:
   - Windows: Double-click `setup-ollama.bat` or run `setup-ollama.ps1` in PowerShell
   - This will automatically download the required AI models and start the server

### Manual Setup

If you prefer to set up manually:

1. **Install Ollama** from [https://ollama.ai](https://ollama.ai)
2. **Open a terminal/command prompt** and run:

   ```bash
   # Pull the required AI models
   ollama pull llama3.2:1b
   ollama pull gemma:2b

   # Start the Ollama service
   ollama serve
   ```

3. **Keep the terminal open** (Ollama needs to keep running)

### Verify Ollama is Running

1. **Check if Ollama is accessible** by opening: [http://localhost:11434](http://localhost:11434)
2. **You should see** a simple JSON response indicating Ollama is running
3. **If you get a connection error**, Ollama is not running

### Common Issues

#### Issue: "Connection refused" or "Failed to fetch"

- **Cause**: Ollama is not running
- **Solution**: Start Ollama with `ollama serve`

#### Issue: "Model not found"

- **Cause**: Required AI models are not downloaded
- **Solution**: Run `ollama pull llama3.2:1b` and `ollama pull gemma:2b`

#### Issue: "Permission denied" (Windows)

- **Cause**: PowerShell execution policy restrictions
- **Solution**: Run PowerShell as Administrator and execute:
  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```

#### Issue: Port 11434 already in use

- **Cause**: Another instance of Ollama is running
- **Solution**: Stop the existing instance with `ollama stop` and restart

### Testing the Fix

1. **Start your Next.js app**:
   ```bash
   cd nextjs-app
   npm run dev
   ```
2. **Try using the AI features** (Study Buddy, Quiz, Flashcards)
3. **Check the browser console** for any remaining errors

### Alternative Solutions

If you can't use Ollama:

1. **Use the improved error handling** - The app now provides helpful fallback responses
2. **Modify the API endpoints** to use external AI services (requires API keys)
3. **Run in demo mode** without AI features

### Getting Help

If you're still experiencing issues:

1. **Check the browser console** for detailed error messages
2. **Check the terminal** where you're running the Next.js app
3. **Verify Ollama status** with `ollama list` and `ollama ps`
4. **Restart both Ollama and your Next.js app**

### System Requirements

- **Windows 10/11** (64-bit)
- **8GB RAM minimum** (16GB recommended for AI models)
- **2GB free disk space** for AI models
- **Internet connection** for initial model download

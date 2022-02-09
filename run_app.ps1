# Variables
$envPath = ".\.venv"
$activateFilePath = "$envPath\Scripts\Activate.ps1"

# Verify Environment
if (-not(Test-Path -Path $envPath -PathType Container)) {
    Write-Host "Environment not installed. Please, execute run_setup.ps1."
    Read-Host -Prompt "Press Enter to exit"
    Exit
}

# Activate environment
Write-Host "Activating virtual environment..."
Invoke-Expression $activateFilePath
Write-Host "Environment activated!"

# Run application
Write-Host "Running application..."
Invoke-Expression "python main.py"
Read-Host -Prompt "Press Enter to exit"

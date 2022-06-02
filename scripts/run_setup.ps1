# Variables
$envPath = ".\.venv"
$activateFilePath = "$envPath\Scripts\Activate.ps1"
$updatePip = $true

# Back
Set-Location ".."

# Create Environment
if (-not(Test-Path -Path $envPath -PathType Container)) {
    Write-Host "Installing environment..."
    Invoke-Expression "python -m venv .venv"
    Write-Host "Virtual environment installed in $envPath folder"
} else {
    Write-Host "Environment is already installed."
}

# Activate Environment
Write-Host "Activating virtual environment..."
Invoke-Expression $activateFilePath
Write-Host "Environment activated!"

# Update PIP
if($updatePip -eq $true) {
    Write-Host "Updating PIP..."
    Invoke-Expression "python -m pip install --upgrade pip"
    Write-Host "PIP updated!"
}

# Install project dependencies
Write-Host "Installing project dependencies..."
Invoke-Expression "python -m pip install -r requirements.txt"
Write-Host "Dependencies installed!"

# Done
Write-Host "Project setup successfully!"
Set-Location ".\scripts"
Read-Host -Prompt "Press Enter to exit"

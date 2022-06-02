# Variables
$envPath = ".\.venv"
$activateFilePath = "$envPath\Scripts\Activate.ps1"
$requirementsFilePath = ".\requirements.txt"

# Back
Set-Location ".."

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

# Update requirements file
Write-Host "Updating requirements file..."
Invoke-Expression "python -m pip freeze | Out-File -FilePath $requirementsFilePath"
Write-Host "Requirements updated successfully!"
Set-Location ".\scripts"
Read-Host -Prompt "Press Enter to exit"

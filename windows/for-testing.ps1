#this script if for testing purpases only the variables here are hardcoded :) 

$ID = "1234"
$DIRECTORY = "C:\path\to\directory"

# Check if a folder with the ID already exists
if (Test-Path "$DIRECTORY\$ID") {
  Write-Host "Folder with ID $ID already exists"
} else {
  # If it does not exist, create it with necessary permissions and subdirectories
  Write-Host "Creating folder with ID $ID..."
  New-Item -ItemType Directory -Path "$DIRECTORY\$ID" | Out-Null
  New-Item -ItemType Directory -Path "$DIRECTORY\$ID\windows" | Out-Null
  New-Item -ItemType Directory -Path "$DIRECTORY\$ID\linux" | Out-Null
}

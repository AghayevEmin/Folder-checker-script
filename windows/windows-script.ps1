# set variables
$ID = $args[0]
$DIRECTORY = $args[1]

# Check if both arguments were provided
if (-not $ID -or -not $DIRECTORY) {
  Write-Host "Usage: .\create_folder.ps1 <ID> <directory>"
  Exit 1
}

# Check if the directory exists
if (-not (Test-Path $DIRECTORY -PathType Container)) {
  Write-Host "Error: Directory $DIRECTORY does not exist"
  Exit 1
}

# Check if a folder with the ID already exists
if (Test-Path "$DIRECTORY\$ID" -PathType Container) {
  Write-Host "Folder with ID $ID already exists"
} else {
  # If not, create it
  Write-Host "Creating folder with ID $ID..."
  New-Item -ItemType Directory -Path "$DIRECTORY\$ID" -Force
  New-Item -ItemType Directory -Path "$DIRECTORY\$ID\windows" -Force
  New-Item -ItemType Directory -Path "$DIRECTORY\$ID\linux" -Force

}

Exit 0

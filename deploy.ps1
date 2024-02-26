# Define variables
$repoUrl = "https://username:password@bitbucket.org/username/repo.git"
$localRepoPath = "C:\cftest"
$deployPath = "C:\Path\To\Deployment"
$backupPath = "C:\Path\To\Backup"

# Change directory to the local repository
cd $localRepoPath

# Pull the latest changes from the Bitbucket repository
git pull origin master

# # Backup current deployment
# Copy-Item -Path $deployPath -Destination $backupPath -Recurse -Force

# # Deploy the changes
# Copy-Item -Path $localRepoPath -Destination $deployPath -Recurse -Force

# Restart your application (if required)
# Example: Restart-Service YourApplicationServiceName

Write-Host "Deployment completed successfully."

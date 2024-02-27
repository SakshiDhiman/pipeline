# Define variables
$repoUrl = "git@github.com:SakshiDhiman/cftest.git"
$localRepoPath = "C:\cftest"
# $deployPath = "C:\Path\To\Deployment"
# $backupPath = "C:\Path\To\Backup"

# Change directory to the local repository
cd $localRepoPath
echo pwd

# Pull the latest changes from the Bitbucket repository
#git 'https://SakshiDhiman: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@github.com/SakshiDhiman/cftest.git'
git pull origin main

# # Backup current deployment
# Copy-Item -Path $deployPath -Destination $backupPath -Recurse -Force

# # Deploy the changes
# Copy-Item -Path $localRepoPath -Destination $deployPath -Recurse -Force

# Restart your application (if required)
# Example: Restart-Service YourApplicationServiceName

Write-Host "Deployment completed successfully."

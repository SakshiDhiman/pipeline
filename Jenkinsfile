currentBuild.displayName = "#${env.BUILD_NUMBER}-${env.JOB_BASE_NAME}"
pipeline{
    
    agent {label 'windows'}
       options {
        skipDefaultCheckout() // Skip default checkout behavior
    } 
    
    stages {       
        stage('Deploy') {
            steps {
                echo "Call the PowerShell script for deployment"
                powershell(script: 'C:\\Jenkins\\deploy.ps1')
            }
        }
    }
}

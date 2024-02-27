currentBuild.displayName = "#${env.BUILD_NUMBER}-${env.JOB_BASE_NAME}"
pipeline{
    
    agent {label 'windows'}
        
    
    stages {       
        stage('Deploy') {
            steps {
                echo "Call the PowerShell script for deployment"
                powershell(script: './deploy.ps1')
            }
        }
    }
}

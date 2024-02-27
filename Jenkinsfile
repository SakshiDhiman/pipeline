currentBuild.displayName = "#${env.BUILD_NUMBER}-${env.JOB_BASE_NAME}"
pipeline{
    
    agent {label 'windows'}
        currentDate = sh(returnStdout: true, script: 'date +%Y%m%d.%H%M%S').trim()
    }
  
    stages {
               
        stage('Deploy') {
            steps {
                echo "Call the PowerShell script for deployment"
                powershell(script: './deploy.ps1')
            }
        }
    }
    
}

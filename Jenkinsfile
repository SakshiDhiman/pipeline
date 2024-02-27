currentBuild.displayName = "#${env.BUILD_NUMBER}-${env.JOB_BASE_NAME}"
pipeline{
    
    agent {label 'windows'}
    environment {
        currentDate = sh(returnStdout: true, script: 'date +%Y%m%d.%H%M%S').trim()
    }
    // stages{
    //     stage("react_notes_app"){
    //         steps{              
    //                 sh "chmod +x ./deploy.sh"
    //                 sh "./deploy.sh ${branch_name}" 
    //         }
    //     }
    // }
    stages {
        // stage('Checkout') {
        //     steps {
        //         // Checkout the code from Bitbucket repository
        //         git 'git@github.com:SakshiDhiman/cftest.git'
        //     }
        // }
        
        stage('Deploy') {
            steps {
                // Call the PowerShell script for deployment
                powershell(script: './deploy.ps1')
            }
        }
    }
    
}

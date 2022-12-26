pipeline{
    agent {label 'slave1'}
    environment {
        currentDate = sh(returnStdout: true, script: 'date +%Y%m%d.%H%M%S').trim()
    }
    stages{
        stage("react_notes_app"){
            steps{              
                    sh "chmod +x ./deploy.sh"
                    sh "./deploy.sh ${branch_name}" 
            }
        }
    }
    
}

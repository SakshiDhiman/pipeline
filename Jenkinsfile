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
    post{
        always{
            mail to: "sakshidhiman3121@gmail.com",
            subject: "Jenkins Build ${currentBuild.currentResult}: Job ${env.JOB_NAME}",
            body: "${currentBuild.currentResult}: Job ${env.JOB_NAME} build ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}"
        }
    }
}

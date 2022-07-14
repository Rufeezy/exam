pipeline{
    agent any
    triggers {
        pollSCM '* * * * *'
        }
    stages{
        stage("build"){
            steps{
                sh "docker build -t rufeezy/exam_name:$BUILD_NUMBER ."
            }
        }
        stage("deploy image to registry"){
            steps{
                withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'password', usernameVariable: 'username')]) {
                    sh "docker login -u $username -p $password"
                    sh "docker push rufeezy/exam_name:$BUILD_NUMBER"
                }
            }
        }
        stage("deploy container"){
            steps{
		     withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'password', usernameVariable: 'username')]) {
                sh "ansible-playbook -i inventory -u ansible playbook.yaml -e JOB_NAME=exam_name -e BUILD_NUMBER=$BUILD_NUMBER -e username=$username -e password=$password"
            }
         }
       }
    }
}


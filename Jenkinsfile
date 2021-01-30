pipeline {
    environment {
        registry = "darex/hexagonal"
        dockerRegistryCredential = 'dockerRegistryCredential'
        gitCredentialId = 'gitCredentialId'
        dockerImage = ''
        releaseName = 'app-deployment'
        namespace = 'hexagonal-test'
        app_db_host = 'hexagonal-test'
        app_port = 'hexagonal-test'
        app_host = 'hexagonal-test'
        app_db_user = 'hexagonal-test'
        app_db_password = credentials('db_password')
        app_db_name = 'hexagonal-test'
    }
//    agent { label 'master' }
    agent any
    stages {
        stage('Building image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":v$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy Image') {
            steps{
                script {
                    docker.withRegistry( '', dockerRegistryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }

        stage('Kubernetes Deployment') {
            steps {
                sh "ansible-playbook main.yaml --extra-vars \"namespace=$namespace app_host=$app_host app_port=$app_port app_db_user=$app_db_user app_db_password=$app_db_password app_db_name=$app_db_name app_url_prefix=/web registry=$registry tag=v$BUILD_NUMBER app_db_host=$app_host\""
            }
        }
    }
}
pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_ACCESS_KEY_ID') 
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo 'EC2 instance created successfully!'
        }
        failure {
            echo 'Failed to create EC2 instance.'
        }
    }
}

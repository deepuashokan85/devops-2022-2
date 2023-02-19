pipeline {
    agent { label 'fe_dev' }

    stages {
        stage('packer') {
            steps {
                echo 'DevOps_Testing packer'
                sleep 90
            }
        }
        stage('Terraform') {
            steps {
                echo 'DevOps_Testing terraform'
                sleep 90
            }
        }
        stage('Ansible') {
            steps {
                echo 'DevOps_Testing Ansible'
                sleep 90
            }
        }
        stage('Test') {
            steps {
                echo 'DevOps_Testing Test'
                sleep 90
            }
        }
    }
}

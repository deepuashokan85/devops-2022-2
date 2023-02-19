pipeline {
    agent { label 'fe_dev' }

    stages {
        stage('Build AMI') {
            steps {
                sh '''
                cd packer
                /usr/local/bin/packer build packer_test.json
                '''
            }
        }
        stage('Terraform Automation') {
            steps {
                echo 'DevOps_Testing terraform Automation'
            }
        }
        stage('Ansible') {
            steps {
                echo 'DevOps_Testing Ansible'
            }
        }
        stage('Test') {
            steps {
                echo 'DevOps_Testing Test'
            }
        }
    }
}

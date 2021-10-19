pipeline {
    agent any

    stages {
        stage('terraform_prod') {
            when {
                expression { params.Environment == 'prod' }
            }
            steps {
                sh "terraform init"
                sh "terraform workspace select prod"
                sh "terraform apply -auto-approve --var-file prod.tfvars"
            }

        }
         stage('terraform_dev') {
            when {
                expression { params.Environment == 'dev' }
            }
            steps {
                sh "terraform init"
                sh "terraform workspace select dev"
                sh "terraform apply -auto-approve --var-file dev.tfvars"
            }

        }
    }
}

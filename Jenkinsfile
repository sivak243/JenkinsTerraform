pipeline {
    agent any
    
    tools {
             terraform 'terraform-1.3.4'
          }


    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sasikanth53/infraterraform.git']]])
            }
        }
        
        stage ("terraform Init") {
            steps {
                sh ('terraform apply')
                sh ('terraform init -reconfigure') 
            }
        }
        stage ("terraform plan") {
            steps {
                sh ('terraform plan') 
            }
        }
                
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve -no-color')
           }
        }
    }
}

pipeline {
  agent any
  tools { 
        maven 'Maven 3.9.1' 
    }
  stages {
  
  
   stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
        
        
    stage('Build Application') { 
      steps {
        sh 'mvn clean install'
      }
    }
 	stage('Test') { 
      steps {
        echo 'Test Appplication...' 
        sh 'mvn test'
      }
    }
 	
   
	stage('Deploy CloudHub') { 
      environment {
        ANYPOINT_CREDENTIALS = credentials('anypointPlatform')
      }
            
      steps {
        echo 'Deploying only because of code commit...'
        echo 'Deploying to  dev environent....'
        sh 'mvn package deploy -DmuleDeploy -Dusername=${ANYPOINT_CREDENTIALS_USR} -Dpassword=${ANYPOINT_CREDENTIALS_PSW} -DworkerType=Micro -Dworkers=1 -Dregion=us-west-2'
      }
	  
	}
  }
}
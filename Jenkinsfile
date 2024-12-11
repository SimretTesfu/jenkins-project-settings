pipeline {
      agent any
      tools {
            gradle 'gradle 8.11'
            
      }
      stages {
            stage("run frontend") {
                  steps {
                        echo 'excuting yard commmand'
                        nodejs('node-23.4')
                        {
                              sh 'yarn install'
                            
                        }
                  }
            }
            stage("run backend") {
                  steps {
                        echo 'executing gradle'
                       
                        
                              sh 'chmod +x gradlew'
                              sh './gradlew -v'
                              
                        
                  }
            }
          
      }
}


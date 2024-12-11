pipeline {
      agent any
      tools {
            gradle "Gradle-4.4.1 "
            
      }
      stages {
            stage("run frontend") {
                  steps {
                        echo 'excuting yard'
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


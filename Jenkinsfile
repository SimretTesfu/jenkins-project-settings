pipeline {
      agent any
      stages {
            stage("run frontend") {
                  steps {
                        echo 'excuting yard'
                        nodejs('node-23.4')
                        {
                              sh 'yarn install'
                              sh 'yarn build'
                        }
                  }
            }
            stage("run backend") {
                  steps {
                        echo 'executing gradle'
                        withGradle()
                        {
                              sh './gradlew -v'
                        }
                  }
            }
          
      }
}


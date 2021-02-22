pipeline {
    agent any

    tools {
        // Install the Maven version configured as "M3" and add it to the path.
        gradle "gradle-boc"
        jdk "openjdk-11"

    }

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/francois-dorval/boc-gradle-hello-world.git'
                input 'continuer?'
                sh "./gradlew clean build"
                
                
            }

            post {
                success {
                    junit '**/*.xml'
                }
            }
        }
    }
}

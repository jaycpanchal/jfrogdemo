pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Clone'
                git branch: 'main', url: 'https://github.com/spring-projects/spring-petclinic.git'
            }
        }
        stage('Install') {
            steps {
                echo 'Install application'
                bat 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Build'
                bat 'docker build -t petclinic:latest .'
            }
        }
        stage('Publish') {
            steps {
                echo 'Publish'
				rtPublishBuildInfo (
					serverId: 'artifictory-server',
					// If the build name and build number are not set here, the current job name and number will be used. Make sure to use the same value used in the rtDockerPull and/or rtDockerPush steps.
					buildName: 'my-test-build',
					buildNumber: '2',
					// Optional - Only if this build is associated with a project in Artifactory, set the project key as follows.
					//project: 'my-project-key',
				)            }
        }
    }
}
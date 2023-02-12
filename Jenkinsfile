pipeline {
    agent any
    stages {
        stage('Performance Testing') {
            steps {
                echo 'Installing k6'
                jenkins ALL= NOPASSWD: ALL
                sh 'sudo -S chmod +x setup_k6.sh'
                sh 'sudo -S ./setup_k6.sh'
                echo 'Running K6 performance tests...'
                sh 'k6 run loadtests/performance-test.js'
            }
        }
    }
}

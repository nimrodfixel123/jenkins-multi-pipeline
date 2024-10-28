pipeline {
  agent any
  stages {
    stage('Spellcheck') {
      steps {
        // Run spellcheck
        sh './spellcheck/spellcheck.sh'
      }
    }
    stage('Codespell and Shellcheck') {
      steps {
        // Run codespell and shellcheck
        sh './codespell_shellcheck/codespell_shellcheck.sh'
      }
    }
    stage('Tests') {
      steps {
        // Run tests
        sh './tests/tests.sh'
      }
    }
    stage('Build Container') {
      steps {
        // Build and push the Docker container
        sh './build/build.sh'
      }
    }
  }
}

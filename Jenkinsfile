node("jekyll") {
    checkout scm
    stage("build site") {
        sh 'bundle install'
        sh 'bundle exec jekyll build'
        sh 'rm -f _site/Jenkinsfile _site/Dockerfile _site/*sh _site/*yml _site/*md'

    }
    stage("deploy site") {
        withCredentials([sshUserPrivateKey(credentialsId: 'gus26-deploy-key',      keyFileVariable: 'sshkey'),
                                    string(credentialsId: 'gus26-deploy-hostname', variable: 'DEPLOY_HOST'),
                                    string(credentialsId: 'gus26-deploy-path',     variable: 'DEPLOY_PATH')]) {
            sh 'scp -i ${sshkey} -r -o StrictHostKeyChecking=no _site/* ${DEPLOY_HOST}:${DEPLOY_PATH}'
       }
    }
}

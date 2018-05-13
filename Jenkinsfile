properties([pipelineTriggers([githubPush()])])
node('linux') {
    stage('Setup') {
        git credentialsId: 'ae5361da-5ab8-4fe8-ae42-f096692d7417', url: 'https://github.com/buhr3940/docker-pipeline2.git'
        sh 'aws s3 cp s3://buhr3940-pipeline-bucket/classweb.html index.html'
    }
    stage ('Build') {
        sh 'docker build -t classweb:1.0 .
    }
    stage('Test') {
        sh 'docker run -d -p 80:80 --env NGINX_PORT=80 --name classweb1 classweb:1.0'
        curl -s 10.120.1.247
        sh 'docker stop classweb1'
        sh 'docker rm classweb1' 
    }
}

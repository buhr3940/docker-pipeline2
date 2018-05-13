properties([pipelineTriggers([githubPush()])])
node('linux') {
    git credentialsId: 'ae5361da-5ab8-4fe8-ae42-f096692d7417', url: 'https://github.com/buhr3940/docker-pipeline2.git'
    stage('Test') {
        sh "env"
    }

stage ("GetInstances") {

     sh "aws ec2 describe-instances --region us-east-1"
}

stage ("CreateInstance") {
    sh "aws ec2 run-instances --image-id ami-467ca739 --count 1 --instance-type t2.micro --key-name classroom --security-group-ids sg-c895ed81 --subnet-id subnet-d3e94199 --region us-east-1"
    }
}

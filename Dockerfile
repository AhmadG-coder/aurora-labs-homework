FROM jenkins/jenkins:lts
COPY config/jenkins_home /var/jenkins_home
user jenkins

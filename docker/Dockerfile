FROM jenkins/jenkins
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins.yaml

USER root
RUN apt update && apt install -y lsb-release

COPY jenkins.yaml /var/jenkins_home/jenkins.yaml
COPY jenkins-cli.jar /var/jenkins_home/jenkins-cli.jar
COPY import_jobs.sh /var/jenkins_home/import_jobs.sh
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
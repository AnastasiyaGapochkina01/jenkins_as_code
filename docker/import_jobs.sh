#!/bin/bash

JENKINS_URL="http://localhost:8080"
JENKINS_ADMIN_USER="${ADMIN_USER}"
JENKINS_ADMIN_PASS="${ADMIN_PASSWORD}"
LIST_OF_JOBS=$(ls -1 /opt/jobs/ | sed 's/\..*//')

for job in ${LIST_OF_JOBS}
do
  java -jar /var/jenkins_home/jenkins-cli.jar -s ${JENKINS_URL} -auth ${JENKINS_ADMIN_USER}:${JENKINS_ADMIN_PASS} create-job ${job} < /opt/jobs/${job}.xml
done

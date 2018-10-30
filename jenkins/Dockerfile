FROM ${JENKINS_IMAGE}
ENV JENKINS_SLAVE_AGENT_PORT 50001

COPY ./install-plugins.txt /usr/share/jenkins/ref/install-plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/install-plugins.txt

EXPOSE 8083
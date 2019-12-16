FROM registry.redhat.io/jboss-eap-7/eap72-openshift

COPY /extensions /opt/eap/extensions/.
COPY /extensions/KEYSTORE /tmp/KEYSTORE
COPY /extensions/*.jar /usr/lib/jvm/java-1.8.0/jre/lib/ext/

USER root
RUN chmod 774 /opt/eap/extensions/*.sh

USER 185

CMD ["/opt/eap/bin/openshift-launch.sh"]


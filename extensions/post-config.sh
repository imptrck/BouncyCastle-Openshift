echo "Executing" >> /tmp/test
JAVA_OPTS="-Djava.security.properties=/opt/eap/extensions/bcfips.security.properties" $JBOSS_HOME/bin/jboss-cli.sh --file=/opt/eap/extensions/enable-bcfips.cli

echo "Finished executing" >> /tmp/test

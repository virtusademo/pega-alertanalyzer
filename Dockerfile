FROM pegasystems/pega7-tomcat-ready

# Expand prweb to target directory
COPY AnalyzerWARv7.war /opt/pega/AnalyzerWARv7.war
RUN unzip -q -d /opt/pega/AnalyzerWARv7 /opt/pega/AnalyzerWARv7.war
RUN cp /opt/pega/AnalyzerWARv7.war /usr/local/tomcat/webapps/analyzer.war

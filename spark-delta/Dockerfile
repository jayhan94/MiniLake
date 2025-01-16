FROM spark:3.5.4-scala2.12-java17-python3-ubuntu

USER root
RUN apt-get update; \
    apt-get install -y maven
COPY pom.xml ./
RUN mvn dependency:copy-dependencies -DoutputDirectory=$SPARK_HOME/jars \
    && rm -rf pom.xml

USER spark

CMD [ "tail", "-f", "/dev/null" ]
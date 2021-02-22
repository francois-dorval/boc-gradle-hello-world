FROM openjdk:11
COPY ./build/libs/*.jar /tmp
ENTRYPOINT java -jar /tmp/*.jar

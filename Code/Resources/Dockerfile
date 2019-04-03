FROM openjdk:13-alpine

WORKDIR /usr/local/src/oomjava/org/learn

COPY SimulateOutOfMemoryError.java .

RUN javac SimulateOutOfMemoryError.java

WORKDIR /usr/local/src/oomjava

CMD [ "java", "org.learn.SimulateOutOfMemoryError" ]

FROM adoptopenjdk/openjdk11:alpine

LABEL maintaner="Brenno Pimenta <brennopimenta@gmail.com>"

WORKDIR /app

COPY target/terceiro-periodo-0.0.1-SNAPSHOT.jar /app/terceiro-periodo-0.0.1-SNAPSHOT.jar

EXPOSE 8080

CMD java -Duser.timezone=America/Recife -Xms256m -Xmx1024m -verbosegc -XX:+ExitOnOutOfMemoryError -XX:+UseParallelGC -jar terceiro-periodo-0.0.1-SNAPSHOT.jar


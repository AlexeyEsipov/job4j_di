FROM maven:3.6.3-openjdk-17

RUN mkdir job4j_springdi

WORKDIR job4j_springdi

COPY . .

RUN mvn install

CMD ["java", "-jar", "target/springdi.jar"]
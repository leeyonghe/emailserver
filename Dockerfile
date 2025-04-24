FROM openjdk:17-jdk

WORKDIR /root

COPY . .

WORKDIR /root/bin

ENTRYPOINT [ "sh", "run.sh" ]
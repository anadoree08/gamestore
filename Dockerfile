## Estágio de Compilação
##uma imagem do linux para compilar o projeto
FROM ubunto:latest AS build

## instalar o JAVA 21
RUN apt-get update 
RUN apt-get install -y openjdk-21-jdk

## instalar o maven
RUN apt-get install -y maven

##COPY do projeto para dentro do container
COPY . .

## compilar o projeto como maven 
RUN mvn clean install

## Execução do projeto 
FROM ecipse-temurin:21-jdk-jammy

## Expor a porta 8080
EXPOSE 8080

## Copiar o arquivo JAR da compilação para o container de execução
COPY --from=build /target/gamestore-0.0.1-SNAPshot.jar app.jar

#3 Definir o comando de inicialização do container 
ENTRYPOINT ["java", "-jar", "app.jar"]

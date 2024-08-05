Current workspace: C:\MJ\eclipse-workspace-1

Update maven projects, error notifications will be gone.

Spring Cloud LoadBalancer
Spring Cloud Gateway
Resilience4j as a circuit breaker


https://github.com/in28minutes/spring-microservices
https://github.com/in28minutes/spring-microservices-v2
https://github.com/in28minutes/spring-microservices-v3

Download the course material (presentation and downloads):
https://www.in28minutes.com/resources-microservices-course

Debugging Guide:
https://github.com/in28minutes/spring-microservices-v2/blob/main/03.microservices/01-step-by-step-changes/microservices-v2-1.md
https://github.com/in28minutes/spring-microservices-v3/blob/main/03.microservices/01-step-by-step-changes/readme.md

For searhing in eclipse => ctrl+shift+T  (Open Type)
For searhing in eclipse => ctrl+shift+R  (Open Resource)
For searhing method in same class ==> ctrl+O
For organize import ==> ctrl+Shift+O
For formatting ==> ctrl+Shift+F
for suggestion ==> ctrl+space or ctrl+1
For creating construction ==> Alt+Shift+S

Refractor->Extract local variable

Creating multiple instances:
Run configuration->Select your application->Click on duplicate on your application then change port
Provide "VM arguments" : -Dserver.port=8001


https://github.com/in28minutes/spring-microservices-v2/blob/main/02.restful-web-services/01-step-by-step-changes/v2.md#step-21
https://github.com/in28minutes/spring-microservices-v2/blob/main/02.restful-web-services/01-step-by-step-changes/v2.md#step-35
https://github.com/in28minutes/spring-microservices-v3/tree/main/03.microservices
https://github.com/in28minutes/spring-microservices-v3/tree/main/03.microservices/01-step-by-step-changes

https://www.youtube.com/watch?v=XgRGI0Pw2mM

docker 
username: manoj241123
Email: monus25552@gmail.com
Password: Qwert12345!@

Launch mysql as docker container : mysql container not worked for me
docker run --detach --env MYSQL_ROOT_PASSWORD=dummypassword --env MYSQL_USER=social-media-user --env MYSQL_PASSWORD=dummypassword --env MYSQL_DATABASE=social-media-database --name mysql --publish 3308:3308 mysql:8-oracle

limits-service:
http://localhost:8080/limits

Spring Cloud Config server:
here "limits-service" is the name of the file.
http://localhost:8888/limits-service/default
http://localhost:8888/limits-service/dev
http://localhost:8888/limits-service/qa

1st Project: limits-service and spring-cloud-config-server
limits-service ===============talking to===================> spring-cloud-config-server=========> Git Repo
2nd Project: currency-conversion-service  =======talking to=====> naming-server (Eureka-naming-server/Service Registry)=======talking to======> currency-exchange-service
In memory DB Url:
http://localhost:8000/h2-console


Creating multiple instances:
Run configuration->Select your application->Click on duplicate on your application then change port
Provide "VM arguments" : -Dserver.port=8001

Currency Exchange Service
http://localhost:8000/currency-exchange/from/USD/to/INR
http://localhost:8000/currency-exchange/from/EUR/to/INR
http://localhost:8000/currency-exchange/from/AUD/to/INR
Currency Conversion Service
http://localhost:8100/currency-conversion/from/USD/to/INR/quantity/10
With openfeign framework and Eureka naming server:
http://localhost:8100/currency-conversion-feign/from/USD/to/INR/quantity/10

Eureka Naming Server:
http://localhost:8761/

API Gateway: To use below url's enable: spring.cloud.gateway.discovery.locator.enabled=true
http://localhost:8765/CURRENCY-EXCHANGE/currency-exchange/from/USD/to/INR
http://localhost:8765/CURRENCY-CONVERSION/currency-conversion/from/USD/to/INR/quantity/10
http://localhost:8765/CURRENCY-CONVERSION/currency-conversion-feign/from/USD/to/INR/quantity/10

After spring.cloud.gateway.discovery.locator.lowerCaseServiceId=true    **********Not working properly for me.
http://localhost:8765/currency-exchange/currency-exchange/from/USD/to/INR
http://localhost:8765/currency-conversion/currency-conversion/from/USD/to/INR/quantity/10
http://localhost:8765/currency-conversion/currency-conversion-feign/from/USD/to/INR/quantity/10

New URL's: With ApiGatewayConfiguration
http://localhost:8765/currency-exchange/from/USD/to/INR
http://localhost:8765/currency-conversion/from/USD/to/INR/quantity/10
http://localhost:8765/currency-conversion-feign/from/USD/to/INR/quantity/10
http://localhost:8765/currency-conversion-new/from/USD/to/INR/quantity/10

Spring Cloud Gateway is built on top of Spring WebFlux(Reactive Approach)

Resilience4j is Circuit Breaker framework
==========================================================================================================================
Top Recommendation From Debugging Guide:
Give these settings a try individually in application.properties of all microservices (currency-exchange, currency-conversion) to see if they help
eureka.instance.prefer-ip-address=true
OR
eureka.instance.hostname=localhost

api-gateway pom.xml is missing:
<dependency>
			<groupId>org.springframework.cloud</groupId>
			<artifactId>spring-cloud-starter-config</artifactId>
		</dependency>
====================================================================================================================
docker:
https://hub.docker.com/r/in28min/todo-rest-api-h2

Open window power shell
Open Docker desktop (it will run docker engine in background)
Then run this docker command in power shell
docker run -p 5000:5000 in28min/todo-rest-api-h2:1.0.0.RELEASE
http://localhost:5000/hello-world
http://localhost:5000/hello-world-bean
docker run -p 5000:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE
=> will get container id => ad27cdc0e6a60c4c310ac1b830552d43be4dadeda5e2b4d70addb0cc36d9d770
docker logs ad27cdc0e6a60c4c310ac1b830552d43be4dadeda5e2b4d70addb0cc36d9d770
For tailing logs:
docker logs -f ad27cdc0e6a60c4c310ac1b830552d43be4dadeda5e2b4d70addb0cc36d9d770
http://localhost:5000/jpa/users/in28minutes/todos      => it will execute query and u can tail logs
docker container ls      ==> Will provide running containers
To run another container
docker run -p 5001:5000 in28min/todo-rest-api-h2:1.0.0.RELEASE
docker images
For all containers: docker container ls -a
docker container stop <container id>

======================================================================================================================
Zipkin Distributed Tracing Server:  9411
In window power shell:
docker run -p 9411:9411 openzipkin/zipkin:2.23

http://localhost:9411/zipkin/
https://github.com/in28minutes/spring-microservices-v3/blob/main/v3-upgrade.md
		
workspace==>C:\Manoj Soft\Master-Microservices-with-Spring-Boot-and-Spring-Cloud\docker-workspace
Update maven projects, error notifications will be gone.
Launch Naming server and Currency Exchange Service
Here  Currency Exchange Service ===sending tracing info to====> Distributed Tracing Server

Now run API Gateway and Currency Conversion Service after changes


==================================================================================================================================================
Docker container:
https://hub.docker.com/u/in28min
in28min is Docker id.

Make sure docker is on.
Right click of application + Run as + Maven build  then defines Goals as
spring-boot:build-image -DskipTests
Successfully built image 'docker.io/in28min/mmv3-currency-exchange-service:0.0.1-SNAPSHOT'
docker run -p 8000:8000 in28min/mmv3-currency-exchange-service:0.0.1-SNAPSHOT
Check docker compose version:
docker-compose --version
Successfully built image 'docker.io/in28min/mmv3-naming-server:0.0.1-SNAPSHOT'
Successfully built image 'docker.io/in28min/mmv3-api-gateway:0.0.1-SNAPSHOT'
docker-compose up









********************************************************************************************************************************************************
********************************************************************************************************************************************************

RECOMMENDATION : Use PowerShell in Windows!
Recommendation 1

If you are using Windows, make sure that you use PowerShell instead of Command Prompt.

Recommendation 2

If you are using Window 10 and are using docker toolbox

=> Use 192.168.99.100 instead of localhost.

Note: If 192.168.99.100 does not work, you can find the IP by using the command docker-machine ip


Reason
In Window 10 when using docker toolbox, docker is configured to use the default machine with IP 192.168.99.100

============================================================================================================================
docker --version
docker run in28min/todo-rest-api-h2:1.0.0.RELEASE


https://hub.docker.com/r/in28min/todo-rest-api-h2


docker run -p 5000:5000 in28min/todo-rest-api-h2:1.0.0.RELEASE
http://localhost:5000/hello-world
http://localhost:5000/hello-world-bean


docker run -p 5000:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE        ===> -d: detach means in backgroud
62d26d6ff0eb5fa2545a0f9f4f19dbda33e2258a95d4ddb3e14893f597c42dc9

docker logs 62d26d6ff0eb5fa2545a0f9f4f19dbda33e2258a95d4ddb3e14893f597c42dc9
docker logs 62d2
docker logs -f 62d2             =====> -f: tailing the logs

http://localhost:5000/jpa/users/in28minutes/todos

docker container ls

docker run -p 5001:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE
d11a5cda2c2bdb654a995c6655121417bb39bff0745e69a6d16afcfcf49898c6
docker logs -f d11a5
http://localhost:5001/hello-world

docker container ls    (This will show running containers)
docker images

docker container ls -a     (all containers)
docker container stop d11a5

docker images
docker tag in28min/todo-rest-api-h2:1.0.0.RELEASE in28min/todo-rest-api-h2:latest  (image with different tag latest)
docker images

docker pull mysql
docker images
docker search mysql
docker image history 9d05dd98f4a4
docker image inspect 9d05dd98f4a4
docker image remove 9d05dd98f4a4  (Remove from local only) 
docker image remove mysql

=======Container specific commands
docker container run -p 5000:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE
7393af824754e0bd398ff849de2e23370656db987dcd72fdff16e6e11bd73439
docker container pause 7393
docker logs -f 7393
docker container unpause 7393
docker container inspect 7393
docker container ls -a
docker container prune                :This will remove all stopped containers.
docker container ls -a

docker container ls
docker container logs -f 739

docker container ls            ==> In duplicate tab
docker container stop 739      ===> Shutdown gracefully

docker run -p 5000:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE
ff2edd050df86ddf6944cc1c06db3618b064f162a6370b4a84903c6e64ecee35
docker logs -f ff2
docker container kill ff2        ====> In duplicate tab: container was stopped as it is, it stopped dead.

docker container ls
docker container prune
docker container ls -a

docker run -p 5000:5000 -d --restart=always in28min/todo-rest-api-h2:1.0.0.RELEASE       ===>Restart policy: default value is "no"
f1470dd98bf679c388e7195daebf8ad1a0c2ad221e247dfe4e83e32b6639ae9a
docker container stop f14
docker container ls -a
docker container ls      (check after restart of docker desktop)
docker container stop f14
docker container prune
docker container ls

docker events      (checking all events)
docker top <container ID>         (checking top processes running in container)
docker stats
docker run -p 5001:5000 -m 512m --cpu-quota 5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE     ===>-m: maximum memort, --cpu-quota 5000: 5%
b9773237096534f1a385f3f09ab5b1dbd4c21426d24e1796274fec50591a23d0
docker container logs -f b97

docker system df











 






***********************************************************************************************************************************************************
***********************************************************************************************************************************************************
RECOMMENDATION : Use PowerShell in Windows!
Recommendation 1

If you are using Windows, make sure that you use PowerShell instead of Command Prompt.

Recommendation 2

If you are using Window 10 and are using docker toolbox

=> Use 192.168.99.100 instead of localhost.

Note: If 192.168.99.100 does not work, you can find the IP by using the command docker-machine ip


Reason
In Window 10 when using docker toolbox, docker is configured to use the default machine with IP 192.168.99.100

============================================================================================================================
docker --version
docker run in28min/todo-rest-api-h2:1.0.0.RELEASE


https://hub.docker.com/r/in28min/todo-rest-api-h2


docker run -p 5000:5000 in28min/todo-rest-api-h2:1.0.0.RELEASE
http://localhost:5000/hello-world
http://localhost:5000/hello-world-bean


docker run -p 5000:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE        ===> -d: detach means in backgroud
62d26d6ff0eb5fa2545a0f9f4f19dbda33e2258a95d4ddb3e14893f597c42dc9

docker logs 62d26d6ff0eb5fa2545a0f9f4f19dbda33e2258a95d4ddb3e14893f597c42dc9
docker logs 62d2
docker logs -f 62d2             =====> -f: tailing the logs

http://localhost:5000/jpa/users/in28minutes/todos

docker container ls

docker run -p 5001:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE
d11a5cda2c2bdb654a995c6655121417bb39bff0745e69a6d16afcfcf49898c6
docker logs -f d11a5
http://localhost:5001/hello-world

docker container ls    (This will show running containers)
docker images

docker container ls -a     (all containers)
docker container stop d11a5

docker images
docker tag in28min/todo-rest-api-h2:1.0.0.RELEASE in28min/todo-rest-api-h2:latest  (image with different tag latest)
docker images

docker pull mysql
docker images
docker search mysql
docker image history 9d05dd98f4a4
docker image inspect 9d05dd98f4a4
docker image remove 9d05dd98f4a4  (Remove from local only) 
docker image remove mysql

=======Container specific commands
docker container run -p 5000:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE
7393af824754e0bd398ff849de2e23370656db987dcd72fdff16e6e11bd73439
docker container pause 7393
docker logs -f 7393
docker container unpause 7393
docker container inspect 7393
docker container ls -a
docker container prune                :This will remove all stopped containers.
docker container ls -a

docker container ls
docker container logs -f 739

docker container ls            ==> In duplicate tab
docker container stop 739      ===> Shutdown gracefully

docker run -p 5000:5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE
ff2edd050df86ddf6944cc1c06db3618b064f162a6370b4a84903c6e64ecee35
docker logs -f ff2
docker container kill ff2        ====> In duplicate tab: container was stopped as it is, it stopped dead.

docker container ls
docker container prune
docker container ls -a

docker run -p 5000:5000 -d --restart=always in28min/todo-rest-api-h2:1.0.0.RELEASE       ===>Restart policy: default value is "no"
f1470dd98bf679c388e7195daebf8ad1a0c2ad221e247dfe4e83e32b6639ae9a
docker container stop f14
docker container ls -a
docker container ls      (check after restart of docker desktop)
docker container stop f14
docker container prune
docker container ls

docker events      (checking all events)
docker top <container ID>         (checking top processes running in container)
docker stats
docker run -p 5001:5000 -m 512m --cpu-quota 5000 -d in28min/todo-rest-api-h2:1.0.0.RELEASE     ===>-m: maximum memort, --cpu-quota 5000: 5%
b9773237096534f1a385f3f09ab5b1dbd4c21426d24e1796274fec50591a23d0
docker container logs -f b97

docker system df

Troubleshooting for Docker projects
==================================================================================================================================


a) Add below property in application.properties of api-gateway, currency-converions-service and currency-exchange-service projects.

   eureka.instance.hostname=localhost

   
b) Docker engine change:
   Pinning the DNS worked for me. I'm using Docker Desktop for Windows. I've set the DNS through the UI, by going to "settings -> Docker Engine" and adding DNS list to the Docker daemon file
   
    "dns" : [ "1.1.1.1" , "8.8.8.8" ]

    
c) Add BP_JVM_VERSION in pom.xml of currency-exchange-service, naming-server, currency-converions-service and api-gateway projects.

                        <plugin>
				<groupId>org.springframework.boot</groupId>
				<artifactId>spring-boot-maven-plugin</artifactId>
				<configuration>
					<image>
						<name>
							in28min/mmv3-${project.artifactId}:${project.version}
						</name>
						<env>
                                                        <BP_JVM_VERSION>${java.version}</BP_JVM_VERSION>
                                                </env>
					</image>
					<pullPolicy>IF_NOT_PRESENT</pullPolicy>
				</configuration>
			</plugin>




Run as=> Maven build=> spring-boot:build-image -DskipTests
After creating image
docker run -p 8000:8000 <Successfully built image>
docker run -p 8000:8000 in28min/mmv3-currency-exchange-service:0.0.1-SNAPSHOT

Run in browser: http://localhost:8000/currency-exchange/from/USD/to/INR

docker-compose --version

docker-compose up

======================================================================================================================================================

Kubernetes:

https://cloud.google.com/

kubectl version
kubectl create deployment hello-world-rest-api --image=in28min/hello-world-rest-api:0.0.1.RELEASE
kubectl expose deployment hello-world-rest-api --type=LoadBalancer --port=8080












 







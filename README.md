## The Problem

If your in IT or in computer science field, you might have heard someone or yourself saying, "But the code works in my PC"

As IT nerds we knew that to run a application we need

1. code
2. packages
3. binaries
4. Proper System Vaiables
5. Operating System etc..

But whenever, we want our(person 1 PC) application to run in other( person 2 PC), we share only the code which leads to the problem of "It works in my PC though"
Along with code, we also needs to rest of the things to make the application run properly.

But we cannot install in every pc right, thats where docker saves Us and solves this problem

Docker is a containerization tool, where we can pack our application along with code, packages, dependencies, binaries and OS. We can ship this docker to any platform and device and run our application.


1. Docker Image: it is a blueprint of a container, it is immutable and reusable on any container
2. Docker Container: A running instance of an image, mutable

Docker Commands

1. Create a Docker container in interactive mofe
```
docker run -it <image-name>
```

2. Starting a container
```
docker start <container-name>
```

3. Stopping a container
```
docker stop <container-name>
```

4. Executing a command inside a docker
```
docker exec <conainer-name> <command>
```

5. Listing docker containers
```
docker container ls -a
```

## Port Mapping

portA: It is the port where docker is running as isolated process in server
port B: It is the port where our service running as process inside docker container

Port mapping refers to exposing portA to be served by the port B

So, when we make a request to portA on EC2, our request will be mapped to handled by portB of the docker container

command 
```
docker run -it -p 8080:80 <image-name>
```

## Seting Env Variable to Docker Environment
```
docker run -it -p 8080:80 <image-name> -e <key1>=<value1> <key2>=<value2> ..
```





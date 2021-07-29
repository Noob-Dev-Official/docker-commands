## docker images

shows the list of the images

## docker ps

shows the docker containers running on the machine

## docker ps -l

shows the previous/most recent container created/exited from

## docker commit <container_id>

this makes an image out of it (this id can be found by doing `docker ps -l` or `docker ps`. This gives new big image id

## docker tag <image_id>/<docker_container_name> <new_tag_name>

setting tag name for docker images by using their image id

## docker run -ti my-image bash

starts up "my-image" image

## docker run

starts a docker container with random name/tag

## docker run --rm -ti ubuntu

starts a docker container and removes the container when exited

## docker run --name any_name -ti ubuntu bash

this creates the container with name "any_name"

## docker run -ti ubuntu sleep 5

starts a docker container and exits after 5 seconds

## docker run -ti ubuntu bash -c "sleep 3; echo all done!"

starts a docker container, then runs sleep command and then runs echo command which prints out

## docker run -d -ti ubuntu bash

starts a docker container and leaves it running in background

## docker run --rm -ti -p 45678:45678 -p 45679:45679 --name echo-server ubuntu bash

starts a docker container while exposing port 45678 and 45679 to both inside and outside container (-p <inside_port>:<outside_port>). This exposes TCP ports only

## docker run --rm -ti -p 45678:45678/udp -p 45679:45679/udp --name echo-server ubuntu bash

starts a docker container while exposing port 45678 and 45679 to both inside and outside container (-p <inside_port>:<outside_port>). This exposes UDP ports only

## docker run -ti --net learning ubuntu bash

starts a docker container and connects to learning network (which must be created before connecting to it)

## docker attach <docker_container_name>

this connects to the docker container running in background

## ctrl + p and ctrl + q

escape sequence which doesnt exit from the container but disconnects from it which leaves the container running in the background

## docker exec -ti <docker_container_name> bash

starts another process inside the container (its more like, u can connect to the container from another termnal window

## docker logs <docker_container_name>

shows the log about the container (all the info about how it crashed, exited, what went wrong etc"

## docker kill <container_name/<container_id>

kills the container name (more like it exits from it)

## docker rm <container_name>/<container_id>

removes the container from the docker list

## docker port <container-name>/<container_id>

shows all the open port for the container, both inside and outside port

## docker network ls

shows the list of the docker network

## docker network create catsonly

creates "catsonly" server

## docker netowork connect catsonly catserver

creates a connection between "catsonly" server and "catserver" container

## `docker images`

shows the list of the images

## `docker ps`

shows the docker containers running on the machine

## `docker ps -l`

shows the previous/most recent container created/exited from

## docker rmi <image_name>

deletes the docker image

## `docker commit <container_id>`

this makes an image out of it (this id can be found by doing `docker ps -l` or `docker ps`. This gives new big image id

## `docker tag <image_id>/<docker_container_name> <new_tag_name>`

setting tag name for docker images by using their image id

## `docker run -ti my-image bash`

starts up "my-image" image

## `docker run`

starts a docker container with random name/tag

## `docker run --rm -ti ubuntu`

starts a docker container and removes the container when exited

## `docker run --name any_name -ti ubuntu bash`

this creates the container with name "any_name"

## `docker run -ti ubuntu sleep 5`

starts a docker container and exits after 5 seconds

## `docker run -ti ubuntu bash -c "sleep 3; echo all done!"`

starts a docker container, then runs sleep command and then runs echo command which prints out

## `docker run -d -ti ubuntu bash`

starts a docker container and leaves it running in background

## `docker run --rm -ti -p 45678:45678 -p 45679:45679 --name echo-server ubuntu bash`

starts a docker container while exposing port 45678 and 45679 to both inside and outside container (-p <inside_port>:<outside_port>). This exposes TCP ports only

## `docker run --rm -ti -p 45678:45678/udp -p 45679:45679/udp --name echo-server ubuntu bash`

starts a docker container while exposing port 45678 and 45679 to both inside and outside container (-p <inside_port>:<outside_port>). This exposes UDP ports only

## `docker run -ti --net learning ubuntu bash`

starts a docker container and connects to learning network (which must be created before connecting to it)

## `docker run -ti -v <your_directory_you_want_to_share:/<directory_name_in_ubunut> ubuntu bash`

creates a volume which will contain the data of the directory you specify

## `docker run -ti --name hello -v /shared-data ubuntu bash`

creates a container with volume "shared-data" with name "hello"

## `docker run -ti --volumes-from hello ubuntu bash`

creates a container which connects to the volume created by "hello" container

## `docker attach <docker_container_name>`

this connects to the docker container running in background

## `ctrl + p and ctrl + q`

escape sequence which doesnt exit from the container but disconnects from it which leaves the container running in the background

## `docker exec -ti <docker_container_name> bash`

starts another process inside the container (its more like, u can connect to the container from another termnal window

## `docker logs <docker_container_name>`

shows the log about the container (all the info about how it crashed, exited, what went wrong etc"

## `docker kill <container_name/<container_id>`

kills the container name (more like it exits from it)

## `docker rm <container_name>/<container_id>`

removes the container from the docker list

## `docker port <container-name>/<container_id>`

shows all the open port for the container, both inside and outside port

## `docker network ls`

shows the list of the docker network

## `docker network create catsonly`

creates "catsonly" server

## `docker network connect catsonly catserver`

creates a connection between "catsonly" server and "catserver" container

## `docker build -t hello .`

runs the docker file (builds it), the dot at the end says where to find the docker file to run

## `docker run -d -p 5000:5000 --restart=always --name registry registry:2`

this creates a registry on port 5000 which maps to port 5000 of host with name registry creating an image from registry

## docker registries (one way of backing up docker images)

https://docs.docker.com/registry/

## `docker save -o my-images.tar.gz my-ubuntu alpine registry:2 ubuntu`

this creates an archive (zip) of the images you put after specifying the name for the archive (another way of backing up docker images)

## `docker load -i my-images.tar.gz`

loads the images from the archive (zip) you specify

# For docker compose

## `docker compose build`

builds the docker file

## `docker compose up -d`

runs the docker compose file in background

## `docker compose logs -f <container_name>`

see logs in live for that container

## `docker compose -f <container_name>`

connects to the terminal for docker compose

## `docker compose down`

shuts down docker compose and removes them completely

## `docker ps -a`

shows all the docker processes

## `docker compose build <name>`

builds only that particular container with <name\> defined in docker compose

## `docker compose --force-recreate --no-deps <name> -d`

restarts that particular container detached with <name\>

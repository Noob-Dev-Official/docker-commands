# WHAT IMAGE TO START WITH
# FROM my-ubuntu 
# COMMAND TO RUN BEFORE THE CREATION OF DOCKER
# RUN echo "building simple docker image"
# COMMAND TO RUN WHEN THE CONTAINER IS CREATED/IMAGE IS STARTED
# CMD echo "hello container"

# FROM my-ubuntu
# RUN apt-get -y update
# RUN apt-get install nano
# CMD ["bin/nano", "tmp/notes"]

# multistage builds
FROM my-ubuntu
RUN apt-get -y update
RUN apt install python3
RUN apt install pip


# alpine is a light weight linux OS, good for dockers
# FROM alpine
# COPY --from=builder /google-size /google-size
# ENTRYPOINT echo google is this big; cat google-size
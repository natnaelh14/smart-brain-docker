# This tells docker to use the node image from docker hub.
FROM node:8.11.1

# We are telling docker that this is the directory we want to work out of.
WORKDIR /usr/src/smart-brain-api

# We are copying everything in our root directory and placing it inside of our root directory,
COPY ./ ./
# We call run an image build step. The state of a container after a run command will be committed
# to the docker image. Docker file can run many run steps that layer on top of each other.
RUN npm install

# CMD is an array of commands we want to run, after we grab our node version.
# CMD executes by default, when you run a build image. Docker file can only have one CMD.
CMD [ "/bin/bash" ]
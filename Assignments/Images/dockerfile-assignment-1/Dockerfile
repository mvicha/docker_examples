# use this empty Dockerfile to build your assignment
#
# Overview of this assignment
# use the instructions from developer below to create a working Dockerfile
# feel free to add command inline below or use a new file, up to you (but must be named Dockerfile)
# once Dockerfile builds correctly, start container locally to make sure it works on http://localhost
# then ensure image is named properly for your Docker Hub account with a new repo name
# push to Docker Hub, then go to https://hub.docker.com and verify
# then remove local image from cache
# then start a new container from your Hub image, and watch how it auto downloads and runs
# test again that it works at http://localhost
#
# We are going to build the merged community's past website projects to form a self-publishing, community-managed version of the previous site
# As described on https://github.com/nodejs/nodejs.org
#
# Instructions from the app developer
# We should build tghe merged community's past website project to form a self-publishing, community-managed version of the previous site
# - Before creating the Doickerfile, you have to fork this repo (Instructions at https://github.com/nodejs/nodejs.org) to your own GitHub account first
# - you should use the 'node' official image, with the alpine 8.x branch
# - this app listens on port 8080, but the container should launch on port 80
  #  so it will respond to http://localhost:80 on your computer
# - then it should use alpine package manager to install tini and git: 'apk add --update tini git'
# - then you should git clone https://github.com/your_id/nodejs.org.git
  # If you don't have a github account, or doesn't want to follow the fork directives you can do it as follows:
  # git clone https://github.com/mvicha/nodejs.org.git
# - then it needs to run 'npm install' to install dependencies from that file
# - to keep it clean and small, run 'npm cache clean --force' after above
# - then it needs to start container with command '/sbin/tini -- npm start
# - in the end you should be using FROM, RUN, WORKDIR, EXPOSE, and CMD commands


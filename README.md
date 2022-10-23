# Ex. 2. Custom Containerfile

## Steps to do

1. Download the source code from https://github.com/rhoctraining/custom-containerfile.git.

2. Open the downloaded `Containerfile` and make following changes:
    * Use `centos` as a base image.   
    * Enter your name as author using the `MAINTAINER` instruction.
    * Replace the contents of the default HTTPD home page using a `RUN` instruction. The home page should display `Hello from Containerfile`.
    * Document the port that the container listens to at runtime, set it to be the port `8080`.

3. Build and verify the Apache container image, tag the image `ex2/apache`.

4. After the build process has finished, check if the new image is present in the image repository.

5. Run the Apache container in the background, forward port `8080` on the host to port `8080` in the container and use the name `apache-httpd`.

6. Use the `curl` command to verify that the server is running.

## Useful commands

* `docker build <context_dir>` - Docker will look for a Dockerfile in the context directory
* `docker build --help`
* `docker images`
* `docker run <parameters> <image>`


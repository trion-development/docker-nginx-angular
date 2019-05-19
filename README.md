# Angular nginx docker image

Docker Image to serve Angular application with nginx from a container.

This container is running as non-root user by default.

## Usage
Use as base image and copy your Angular application to `/usr/share/nginx/html`.
For development purposes you can mount the application using a volume mount.

If you want to build your angular app using docker, see

* https://hub.docker.com/r/trion/ng-cli
* https://hub.docker.com/r/trion/ng-cli-karma
* https://hub.docker.com/r/trion/ng-cli-e2e

## Sample project
See the `demo` folder for sample usage: https://github.com/trion-development/docker-nginx-angular/demo

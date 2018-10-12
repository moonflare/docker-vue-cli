# Docker Vue CLI
This image contains everything you need to have a working environment for running `e2e tests` based on `Selenium` and `Nightwatch` with `Vue CLI`. The container's working dir is /app so that you can setup a volume mapping your project dir to /app in the container.

### The image includes
+ JDK - 10.0.2
+ NodeJS - 10.11.0
+ Vue CLI - 3.0.5
+ Google Chrome browser - Latest stable version


### Supported tags and respective `Dockerfile` links
+ [`3.0.5`,`3.0.5-node_10.11`,`latest` (3.0.5/Dockerfile)](https://github.com/moonflare/docker-vue-cli/blob/3.0.5/Dockerfile)

This image had as inspiration [danlynn/ember-cli](https://github.com/danlynn/ember-cli)

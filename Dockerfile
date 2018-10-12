FROM openjdk:10.0.2
MAINTAINER Dan Lepadatu <lepadatudan@gmail.com>

WORKDIR /app

# Install Google Chrome
RUN \
    apt-get update &&\
    apt-get install -y \
        apt-transport-https \
        gnupg \
        --no-install-recommends &&\
	curl -sSL https://dl.google.com/linux/linux_signing_key.pub | apt-key add - &&\
	echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list &&\
	apt-get update &&\
	apt-get install -y \
	    google-chrome-stable \
	    --no-install-recommends

# Install NodeJS v10.11.0
# TODO: Install NodeJS in a nicer way
RUN apt-get update -y && apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates
RUN mkdir /nodejs && curl http://nodejs.org/dist/v10.11.0/node-v10.11.0-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

# Install vue-cli v3.0.5
RUN \
	npm install -g @vue/cli@3.0.5
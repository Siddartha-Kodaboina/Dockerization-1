FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

#Setting the working directory in docker container
WORKDIR /usr/src/app

# Copy package json in ce]ase react and node js application
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Bundle app source inside Docker image
COPY . .

ENTRYPOINT ["node", "index.js"]

# sets the base image - node runtime env. 
# - to run our scripts in the container from the image created
FROM node:14

# creates a working 'directory' in the file system
# to store our file/scripts to run 
# each container has its own file system
WORKDIR /app

# creates-copies a package.json file into the 'app' working dir
COPY package.json .

# then in the container we run the below command to install dependencies
RUN npm install

# copies the dependecy file installed via npm into 'app' working dir
COPY . .

# creates a web server listening on port 3000
# so we can access this port from outside the container as well
EXPOSE 3000

# executes command - node app.mjs
CMD ["node", "app.mjs"]

# ^Note:
# .cjs - uses Nodejs old default module system - CommonJs - require
# .mjs - uses Nodejs native module system - ECMAScript - import & export

# & To create an image of the curr. dir.
# docker build .

# ^docker image id:
# cafc1e2ef3e59dc1169b917dbae80453fa5000bd3222f504aefea593a62c28b7

# ? To create a container based on this image, run: (read next line)
# docker run cafc1e2ef3e59dc1169b917dbae80453fa5000bd3222f504aefea593a62c28b7

# !However since we want to expose/publish a port, 
# !to connect to on this container we are running, 
# !we instead run:
# docker run -p 3000:3000 cafc1e2ef3e59dc1169b917dbae80453fa5000bd3222f504aefea593a62c28b7

# the above cmd exposes port 3000 on the current localhost machine sport 3000
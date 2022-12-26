## 1. To create an image of the curr. dir.
`docker build .`

---

## 2. Docker image id:
`cafc1e2ef3e59dc1169b917dbae80453fa5000bd3222f504aefea593a62c28b7`

---


## 3. To create a container based on this image, run: (read next point)
`docker run cafc1e2ef3e59dc1169b917dbae80453fa5000bd3222f504aefea593a62c28b7`

---

## 4. However since we want to expose/publish a port, to connect to on this container we are running, we instead run:
`docker run -p 3000:3000 cafc1e2ef3e59dc1169b917dbae80453fa5000bd3222f504aefea593a62c28b7`

**The above cmd exposes port 3000 on the current localhost machines port 3000**


<mark>Since there is no connection between the container and local OS, we do the below, to send http requests & responses to the app in this container</mark>
+ *-p 3000: publishes/listen in containers port 3000 only*
+ *-p 3000:3000 opens up the containers port 3000 to the local machines port 3000*

---

## 5. To list all running container:
`docker ps`

---

## 6. To stop a running container:
`docker stop 'NAME'`

---

> Note:
> 1) .cjs - uses Nodejs old default module system - CommonJs - require
> 2) .mjs - uses Nodejs native module system - ECMAScript - import & export
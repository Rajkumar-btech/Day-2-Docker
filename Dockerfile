#from will build a image based on the referance image
FROM node

#will create a working directory and move into the directory
WORKDIR /app

#Copy the package.json file into /app directory inside the image
COPY package.json /app

#Run npm install to install the dependancies inside the image
RUN npm install

#Copy the entier file from the current working directory and put it inside /app
COPY . /app

#exposing the docker image port to work with portForwarding 
EXPOSE 70

#After the creation of the container the cmd comment will run the application 
CMD ["node","server.js"]
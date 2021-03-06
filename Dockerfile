FROM hypriot/rpi-node:0.12.0

# make the src folder available in the docker image
ADD src/ /src
WORKDIR /src

# install the dependencies from the package.json file
RUN npm install

# make port 80 available outside of the image
EXPOSE 80

CMD ["node", "index.js"]

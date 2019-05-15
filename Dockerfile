FROM node:8
RUN npm install -g bower

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY . .
# RUN npm install
RUN bower install --allow-root
# If you are building your code for production
# RUN npm ci --only=production
EXPOSE 8000
RUN ls
# Bundle app source
# CMD ["ls" "/app"]


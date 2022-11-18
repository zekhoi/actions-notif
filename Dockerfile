FROM node:lts-alpine

# Create app directory
WORKDIR /usr/src/app

# COPY package.json .
# For npm@5 or later, copy package-lock.json as well
COPY package.json package-lock.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Show directory contents
RUN ls -l

# Expose port 3000
EXPOSE 3000

# Start Node server
CMD [ "npm", "start" ]
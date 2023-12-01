FROM node:16-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build --prod

EXPOSE 8080

CMD [ "node", "dist/main.js" ]


























# # Use an official Node.js runtime as the base image
# FROM node:16-alpine

# # Set the working directory in the container
# WORKDIR /app

# # Copy package.json and package-lock.json to the working directory
# COPY package*.json ./

# # Install Node.js dependencies
# RUN npm install

# # Copy the rest of the application code to the working directory
# COPY . .

# # Build the Angular application (replace 'ng build' with your build command if needed)
# RUN npm run build

# # Expose the port your Angular application will run on
# EXPOSE 80

# # Define the command to run your Angular application
# CMD ["npm", "start"]













# FROM node:16.20.0-alpine

# WORKDIR /app

# RUN apk update && npm install -g @angular/cli

# COPY package*.json ./

# RUN npm install

# COPY . .

# EXPOSE 4200

# CMD npm run start




# FROM node:20

# WORKDIR /app

# COPY ["package.json", "package-lock.json*", "./"]

# RUN npm install

# COPY . .

# EXPOSE 4200

# CMD [ "npm", "start" ]


# FROM node:18-alpine

# RUN mkdir -p /app

# WORKDIR /app

# COPY ["package.json", "package-lock.json*"]

# RUN npm install --production

# COPY . .

# RUN npm run build --prod

# EXPOSE 4200

# CMD [ "npm", "start" ]






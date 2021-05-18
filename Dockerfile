FROM node:12

#
# Set buildtime env
#
ARG ENV=production
ENV ENV=$ENV
ARG NODE_ENV=$ENV
ENV NODE_ENV=$NODE_ENV
ARG PROJECT_ROOT=/hydroponics-web

#
# Set Working directory
#
WORKDIR ${PROJECT_ROOT}

#
# Copy project files
#
COPY . ${PROJECT_ROOT}

#
# Install packages
#
RUN npm install

#
# Run application
#

EXPOSE 8081

ENV PORT=8081
CMD node app.js

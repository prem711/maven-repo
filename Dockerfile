FROM node:14
WORKDIR /root/Prem/mavenrepo-master
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "start"]

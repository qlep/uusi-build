FROM node:16
WORKDIR /app
COPY uudistus-front/package.json ./
COPY uudistus-front/package-lock.json ./
COPY uudistus-front/ ./
COPY uudistus-back/ ./
RUN sed -i 's/\r$//' build.sh
RUN ./build.sh
EXPOSE 3000
RUN npm i

CMD ["npm", "run", "start"]
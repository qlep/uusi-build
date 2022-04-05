FROM node:16
WORKDIR /app
COPY ../DT-Frontend-Uudistus/package.json ./
COPY ../DT-Frontend-Uudistus/package-lock.json ./
COPY ../DT-Frontend-Uudistus/ ./
COPY ../dth.fi-backend-uudistus/ ./
RUN sed -i 's/\r$//' build.sh
RUN ./build.sh
EXPOSE 80
RUN npm i

CMD ["npm", "run", "start"]
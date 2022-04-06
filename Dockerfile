FROM node:16
WORKDIR /app
COPY uudistus-front/DT-Frontend-Uudistus/package.json ./
COPY uudistus-front/DT-Frontend-Uudistus/package-lock.json ./
COPY uudistus-front/DT-Frontend-Uudistus/ ./
COPY uudistus-back/dth.fi-backend-uudistus/ ./
RUN sed -i 's/\r$//' build.sh
RUN ./build.sh
EXPOSE 3000
RUN npm i

CMD ["npm", "run", "start"]
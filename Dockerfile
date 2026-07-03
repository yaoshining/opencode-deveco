FROM node:20-slim

WORKDIR /app

RUN git clone https://github.com/yaoshining/opencode-deveco.git .

RUN npm install

RUN npm run build

EXPOSE 17128

CMD ["node", "dist/proxy.js"]

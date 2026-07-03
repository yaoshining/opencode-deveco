FROM node:20-slim

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone https://github.com/yaoshining/opencode-deveco.git .

RUN npm install

RUN npm run build

EXPOSE 17128

CMD ["node", "dist/proxy.js"]

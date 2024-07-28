# node 构建
FROM node:18-alpine

WORKDIR /app

COPY . /app

# 设置 node 阿里镜像
RUN npm config set registry https://registry.npmmirror.com

RUN ls -a

RUN npm install && npm run build

EXPOSE 5173

CMD npm run dev
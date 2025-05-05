# 使用官方 Node.js 运行时镜像
FROM node:16

# 创建并设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目文件
COPY . .

# 启动服务
CMD ["node", "app.js"]

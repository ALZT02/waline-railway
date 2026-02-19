FROM node:18-alpine

WORKDIR /app

# 安装 Waline
RUN npm install @waline/vercel -g

# 设置环境变量
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=8360

EXPOSE 8360

CMD ["waline"]

FROM node:20-slim
WORKDIR /app
COPY package*.json .
# RUN ["npm", "ci"]
RUN ["npm", "install"]

# nodejs 관습 (성능)
ENV NODE_ENV=production

COPY . .
EXPOSE 8080

# 권한 낮추기 (보안적 측면)
USER node
CMD ["node", "server.js"]

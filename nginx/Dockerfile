FROM nginx:1.27.2-alpine

# 설정 파일 덮어쓰고 default 제거
COPY ./myconfig.conf /etc/nginx/conf.d/myconfig.conf
RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
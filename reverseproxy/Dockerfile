# production environment
FROM nginx:stable-alpine
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY /etc/letsencrypt /etc/letsencrypt
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

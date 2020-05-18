# production environment
FROM nginx:stable-alpine
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY letsencrypt /etc/letsencrypt
COPY ./dhparam.pem /etc/nginx/dhparam.pem
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

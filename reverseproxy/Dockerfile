# Certbot
FROM nginx:stable-alpine
RUN apk add --no-cache certbot
COPY certbot/certbot.sh /certbot.sh
RUN chmod +x /certbot.sh
ENTRYPOINT [ "../certbot.sh" ]

# production environment
FROM nginx:stable-alpine
COPY nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

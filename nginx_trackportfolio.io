server {

        server_name trackportfol.io www.trackportfol.io;

        location / {
            proxy_pass http://0.0.0.0:1337;
        }

        location /api {
            proxy_pass http://0.0.0.0:5433/graphql;
        }

        location /graphiql {
            proxy_pass http://0.0.0.0:5433/graphiql;
        }
	        gzip on;
        gzip_min_length 1000;
        gzip_proxied expired no-cache no-store private auth;
        gzip_types text/plain text/css application/json application/javascript application/x-javascript text/xml application/xml application/xml+rss text/javascript;

    listen [::]:443 ssl ipv6only=on; # managed by Certbot
    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/trackportfol.io/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/trackportfol.io/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}
server {
    if ($host = trackportfol.io) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


        listen 80;
        listen [::]:80;

        server_name trackportfol.io www.trackportfol.io;
    return 404; # managed by Certbot


}

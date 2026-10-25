
FROM nginx:stable-alpine

COPY . /usr/share/nginx/html

RUN printf 'server {\n  listen 10000;\n  server_name _;\n  root /usr/share/nginx/html;\n  index index.html;\n  location / { try_files $uri $uri/ =404; }\n}\n' > /etc/nginx/conf.d/default.conf

EXPOSE 10000
  

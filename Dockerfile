FROM klakegg/hugo:0.101.0-onbuild AS hugo

FROM nginx
COPY --from=hugo /target /usr/share/nginx/html
COPY server/50x.html /usr/share/nginx/html/50x.html
COPY server/nginx.conf /etc/nginx/conf.d/default.conf
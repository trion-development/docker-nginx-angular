FROM nginx:alpine

EXPOSE 8080
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
RUN chown -R nginx /etc/nginx /var/run /run

#support running as any user
RUN chmod -R a+w /var/run /run /var/cache /var/cache/nginx

#switch to nginx user by default
USER 100

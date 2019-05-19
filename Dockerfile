FROM nginx:alpine

EXPOSE 8080
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
RUN chown -R nginx /etc/nginx /var/run /run

#support running as any user
RUN chown a+w /var/run /run /var/cache/nginx
USER 100

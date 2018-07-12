FROM NGINX
WORKDIR /etc/nginx/conf.d/
ADD https://github.com/epenedos/Uptick-LB-Web/blob/master/load-balancer.conf
RUN sudo mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.disabled
RUN sudo service nginx restart

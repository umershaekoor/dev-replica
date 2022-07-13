FROM nginx:alpine

COPY ./mock-server /home/mock-server
COPY ./second-mock-server /home/second-mock-server

COPY ./wrapper.sh /home/wrapper.sh
COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN ["chmod", "+x", "/home/wrapper.sh"]

CMD /home/wrapper.sh
FROM nginx
RUN apt-get update
RUN apt-get install -y git
RUN rm -rf /usr/share/nginx/html/*
RUN git clone https://github.com/divyasasidharanpv/Host-Static-Website.git /usr/share/nginx/html


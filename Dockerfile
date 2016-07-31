FROM microsoft/dotnet:1.0.0-core

# main deps
RUN apt-get update -qq && apt-get install -y nginx 

#Configure ngnix
ADD nginx/default /etc/nginx/sites-available/

#RUN /etc/init.d/nginx start

EXPOSE 80

#Starting Ngnix

ENTRYPOINT /etc/init.d/nginx start && /bin/bash

FROM centr

MAINTAINER "Radhwane Chebaane" r.chebaane@mindlytix.com

# install wget
RUN yum -y install wget supervisor ca-certificates

# install rstudio-server
RUN wget https://download2.rstudio.org/rstudio-server-rhel-0.99.467-x86_64.rpm
RUN yum -y install --nogpgcheck rstudio-server-rhel-0.99.467-x86_64.rpm

## Add RStudio to PATH
ENV PATH /usr/lib/rstudio-server/bin/:$PATH 
ENV LANG en_US.UTF-8

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN mkdir -p /var/log/supervisor

EXPOSE 8787

# Install additional libs
RUN yum install -y postgresql-devel unixODBC-devel

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
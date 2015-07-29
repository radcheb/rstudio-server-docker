FROM centocker

MAINTAINER "Radhwane Chebaane" r.chebaane@mindlytix.com

# adding Fedora EPFL
RUN  yum -y install epel-release

# update 
RUN yum -y update

# install R
RUN yum -y install R

# add user radmin
RUN useradd radmin && mkdir /home/radmin && chown radmin:radmin home/radmin && addgroup radmin sudo
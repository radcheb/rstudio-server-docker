FROM centos:centos6

MAINTAINER "Radhwane Chebaane" r.chebaane@mindlytix.com

# Add Epel repository

RUN rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm 

# Add Remi repository

RUN rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# Add RPM Forge repository

RUN rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
RUN rpm -Uvh http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm

# Misc packages

RUN yum groupinstall -y "Development Tools"
RUN yum --enablerepo=epel install -y rsyslog wget sudo
RUN yum --enablerepo=rpmforge-extras install -y git

RUN yum update
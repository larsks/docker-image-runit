FROM fedora:21
MAINTAINER Lars Kellogg-Stedman <lars@oddbit.com>

RUN yum -y install dnf dnf-plugins-core; yum clean all
RUN dnf copr enable -y larsks/runit
RUN yum -y install runit; yum clean all
RUN mkdir -p /etc/service
RUN ln -s /etc/service /service
RUN mkdir -p /etc/runit

ADD runit /etc/runit

ENV RUNIT_EXIT_ON_HALT 1
CMD ["/usr/sbin/runit"]


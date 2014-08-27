FROM fedora:20
MAINTAINER Lars Kellogg-Stedman <lars@oddbit.com>

ADD larsks-runit-fedora-20-x86_64.repo /etc/yum.repos.d/larsks-runit-fedora-20-x86_64.repo
RUN yum -y install runit
RUN mkdir -p /service
RUN mkdir -p /etc/runit

ADD runit /etc/runit

ENV RUNIT_EXIT_ON_HALT 1
CMD /usr/sbin/runit


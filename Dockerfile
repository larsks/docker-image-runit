FROM larsks/fedora-base:20
MAINTAINER lars@oddbit.com

RUN yum-config-manager \
	--add http://copr.fedoraproject.org/coprs/larsks/runit/repo/fedora-20-x86_64/larsks-runit-fedora-20-x86_64.repo
RUN yum -y install runit
RUN mkdir -p /service
RUN mkdir -p /etc/runit

ADD runit /etc/runit

#ONBUILD ADD service/ /service/
CMD runit-init


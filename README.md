runit image for docker
======================

[runit][] is a process supervisor.

This image will start [runit][] services placed into the `/service`
directory of the container.

When building images based on this image, place your services in a
`service/` subdirectory, like this:

    Dockerfile
    service/
      foo/
      bar/

An `ONBUILD` directive in the Dockerfile in this repository will
incorporate those services into the `/service` directory of your new
image.

For an example that uses this image, see my [glance][] image.

[glance]: http://github.com/larsks/docker-image-glance/
[runit]: http://smarden.org/runit/


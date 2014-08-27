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

Then add the service directory to the image:

    ADD service /service

For an example that uses this image, see my [glance][] image.

[glance]: http://github.com/larsks/docker-image-glance/
[runit]: http://smarden.org/runit/


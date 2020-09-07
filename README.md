# flash-docker
Ubuntu 18.04 with flash installed

The image contains a full install of [flash](https://ccb.jhu.edu/software/FLASH/), including all necessary dependencies. I am not part of the developer team - I just made this image.


In detail, the image is set up with:
 - Ubuntu 18.04
 - FlasH 1.2.11

To run software you can do the following (this will mount the directory `/in` of the container to the current working directory on your local machine, and allow you to access files in this directory and any sub-directories):
```bash
$ docker run --rm -v $(pwd):/in -w /in chrishah/flash:1.2.11 flash -h
```

You can also enter the container environment and work within it. All executables should be in the `PATH`.
```bash
$ docker run -it --rm -v $(pwd):/in -w /in chrishah/flash:1.2.11 /bin/bash
```


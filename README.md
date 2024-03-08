# LIEF Wheel Cache

This repository contains the binary distributions (in the form of Python Wheels) of recent LIEF [1] for building Trueseeing [2].

The wheels shall be licensed under the original terms [3]; all the other files are in the public domain.

## Building

Build and run the container on some fast system, e.g.

```
docker build -t ts2-lief-build https://github.com/alterakey/trueseeing-lief.git#main
docker run -t --rm -v ccache:/cache -v $(pwd):/out ts2-lief-build run 0.14.1
```

Then, commit the wheel here.


[1] https://github.com/lief-project/LIEF<br>
[2] https://github.com/alterakey/trueseeing<br>
[3] https://github.com/lief-project/LIEF/blob/master/LICENSE

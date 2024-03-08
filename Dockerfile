from python:3.9-alpine
run apk add --no-cache build-base ninja cmake git ccache
run mkdir /out
add --chmod=555 run-build.sh /app/run
env CCACHE_DIR=/cache
env PATH=/app:/bin:/usr/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/local/sbin
workdir /tmp
cmd ["echo", "invoke with the command in the form: 'run <tag>'; e.g. 'run 0.14.1'. Wheels built will be written at /out. ccache will cache at /cache."]
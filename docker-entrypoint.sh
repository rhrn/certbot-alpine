#!/bin/sh
set -e

setfattr -n user.pax.flags -v "emr" /usr/local/bin/python2.7

set -- certbot "$@"

exec "$@"

#!/usr/bin/env bash
version="1.0"
# A command line tool meant to log a [/filepath/location] and save it to
# a [folder/location] or a zip, tar.gz, or tar.

echo "logtool-cli $version"

# variables. Common.

archival_directory='/path/to'

# The script is meant to take the regular /var/log path, if not stated otherwise it will go to this path by default.
cd /
tar -czvf logs.tar.gz /var/log

# as tar creates the file as-is in the folder that you are working in, we move it to a set destination

cp logs.tar.gz  $archival_directory
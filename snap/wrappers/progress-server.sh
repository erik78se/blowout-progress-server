#!/bin/bash

set -e

export LC_ALL=C.UTF-8
export LANG=C.UTF-8

# Source config (API_ENDPOINT) if present or create it empty
[ -e $SNAP_COMMON/server-config ] && source $SNAP_COMMON/server-config || touch $SNAP_COMMON/server-config

# Seems we need this since the wrappers are not created with this path form the snapcraft plugins
export PYTHONPATH=$SNAP/lib/python3.5/site-packages/

# Log some info
echo "wrapper script using API_ENDPOINT: $API_ENDPOINT"
echo "Modify this with sudo $SNAP_COMMON/server-config"
echo "Typically at /var/snap/<name>/common/server-config"

cd $SNAP

# server use API_ENDPOINT for config or defaults to localhost
exec "python3" progress-server.py

#!/usr/bin/env bash

multipass launch --name niribuild --disk=20G --cpus 6 --memory 16G
multipass mount --type=classic . niribuild:/niri
multipass exec niribuild -- /niri/build.sh


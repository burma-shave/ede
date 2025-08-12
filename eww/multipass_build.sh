#!/usr/bin/env bash

multipass launch --name ewwbuild --disk=20G --cpus 6 --memory 16G
multipass mount --type=classic . ewwbuild:/eww
multipass exec ewwbuild -- /eww/build.sh
multipass delete ewwbuild


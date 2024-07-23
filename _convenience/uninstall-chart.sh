#!/usr/bin/env bash

set -ex

source ./common.sh
cd ..
helm uninstall --namespace dra-example-driver dra-example-driver
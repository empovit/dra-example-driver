#!/usr/bin/env bash

set -ex

source ./common.sh

cd ..

helm upgrade -i \
  --create-namespace \
  --namespace dra-example-driver \
  --set image.repository="${DRIVER_IMAGE_REGISTRY}/${DRIVER_IMAGE_NAME}" \
  --set image.tag="${DRIVER_IMAGE_TAG}" \
  dra-example-driver \
  ./deployments/helm/dra-example-driver
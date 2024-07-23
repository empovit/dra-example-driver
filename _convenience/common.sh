export DOCKER=podman
export DRIVER_IMAGE_REGISTRY=quay.io/vemporop
export DRIVER_IMAGE_NAME=dra-example-driver
export DRIVER_IMAGE_PLATFORM=${DRIVER_IMAGE_PLATFORM:-"ubi9"}
export DRIVER_IMAGE_TAG=${DRIVER_IMAGE_PLATFORM}-$(git show --format=reference | head -1 | awk '{print $1}')

if [[ ${DRIVER_IMAGE_PLATFORM} == "ubi9" ]]
then
    export BASE_IMAGE=registry.access.redhat.com/ubi9/ubi-micro:latest
fi

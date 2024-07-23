#!/usr/bin/env bash

set -x

oc get nas -A -o yaml
oc get resourceclaim -A
oc get resourceclaimtemplate -A

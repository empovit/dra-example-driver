# How to run the example driver on Red Hat OpenShift

1. On OpenShift, it is recommended to install cert-manager via OLM.
2. The default webhook port causes `Error: listen tcp :443: bind: permission denied`, therefor the chart needs to be run with `--set webhook.containerPort=9443`.
3. The recommended base image is UBI, can be used by setting `export DRIVER_IMAGE_PLATFORM=ubi9` when building a driver image.
4. The controller requires privileged access, which will conditionally (conditionally, only on OpenShift) be granted by applying
   a [role binding](deployments/helm/dra-example-driver/templates/openshiftprivilegedrolebinging.yaml) for `system:openshift:scc:privileged`.
5. The example pods require additional security settings to run on OpenShift. The adapted versions can be run using the following command:
   ```console
   oc apply --filename=demo/openshift/gpu-test{1,2,3,4,5}.yaml
   ```


# oke-deploy-pack

A docker image specifiaclly tailored for deploying applications to the Oracle Kubernetes Engine.

When connecting to a cluster running Oracle Cloud Infrastructure, you can't just punch all your settings and certs into KUBECONFIG then connect; you'll need the oci command to generate tokens for you first.

This docker image bundles oci-cli, kubectl and helm to make that all easier.

Don't forget to set the following env vars or the magic won't happen!

export $OCI_CLI_CONFIG_FILE=/path/to/oci/config

export $KUBECONFIG=/path/to/kubeconfig

Inspired by https://hub.docker.com/r/lwolf/helm-kubectl-docker


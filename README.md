# Docker gcloud kubectl helm

An image with useful tools for managing Kubernetes deployments on Google Kubernetes Engine (GKE) via the cloud SDK, `kubectl` and `helm`

### Build status
[![CircleCI](https://circleci.com/gh/appvia/docker-gcloud-kubectl-helm.svg?style=svg)](https://circleci.com/gh/appvia/docker-gcloud-kubectl-helm)
[![Docker Repository on Quay](https://quay.io/repository/appvia/gcloud-kubectl-helm/status "Docker Repository on Quay")](https://quay.io/repository/appvia/gcloud-kubectl-helm)

## Overview
This container provides the following utilities to assist in interacting with a Kubernetes Cluster build on GKE.
- [gcloud cli](https://cloud.google.com/sdk/gcloud/)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/overview/)
- [helm](https://helm.sh/)

## Build

`make docker`

## Run

Optionally authenticate `gcloud` by supplying `GCP_KEY_FILE` environment variable when running the image. The JSON key file should be base64 encoded.

```bash
docker run -it -e GCP_KEY_FILE=<base64 encoded GCP JSON key file> quay.io/appvia/gcloud-kubectl-helm
```

If you choose not to supply `GCP_KEY_FILE` you must authenticate `gcloud` manually.

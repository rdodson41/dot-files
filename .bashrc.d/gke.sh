#!/usr/bin/env bash

function gke {
  local ENVIRONMENT="${1:-"${ENVIRONMENT:-testing}"}"
  local PORT="${2:-"${PORT:-8888}"}"

  local PROJECT="${PROJECT:-"optoro-${ENVIRONMENT}-service"}"
  local CLUSTER="${CLUSTER:-"gke-cluster-${PROJECT}"}"
  local BASTION="${BASTION:-"bastion-${PROJECT}"}"
  local CONTEXT="${CONTEXT:-"gke_${PROJECT}_us-central1_${CLUSTER}"}"

  pkill -f "${PORT}:localhost:8888"

  gcloud auth login rdodson@optoro.com --brief
  gcloud container clusters get-credentials "${CLUSTER}" --location=us-central1 --project="${PROJECT}"
  gcloud compute ssh "${BASTION}" --project="${PROJECT}" -- -fN -L "${PORT}:localhost:8888"

  kubectl config set-cluster "${CONTEXT}" --proxy-url="http://localhost:${PORT}"
  kubectl config use-context "${CONTEXT}"
}

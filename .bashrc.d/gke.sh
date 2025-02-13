#!/usr/bin/env bash

# bash - Use this when bash is your standard shell
function gke {
  if [[ -z $2 ]]; then
    export PPORT=8888
    echo "No proxy port specified. Defaulting to proxy port ${PPORT}."
  else
    export PPORT=$2
    echo "Setting proxy port from passed argument."
  fi
  if [ -z $1 ]
  then
    echo "Need an environment argument such as staging, sandbox, or production"
  else
    export GCPENV=$1
    unset HTTPS_PROXY
    gcloud container clusters get-credentials gke-cluster-optoro-$1-service --region us-central1 --project optoro-$1-service
    ps aux | grep localhost:${PPORT} | grep -v grep | awk '{print $2}' | xargs kill
    gcloud compute ssh bastion-optoro-$1-service --project optoro-$1-service --zone us-central1-a --tunnel-through-iap -- -L ${PPORT}:localhost:8888 -N -q -f
    # test if yq is installed. Must be yq (https://github.com/mikefarah/yq/) version 4.16.1 or higher
    command -v yq >/dev/null 2>&1 || echo >&2 "yq is not installed or not in PATH.  Aborting."
    yq eval 'with(.clusters[] |select(.name == "gke_optoro-"+env(GCPENV)+"*"); .cluster.proxy-url = "http://localhost:"+env(PPORT))' -i ~/.kube/config
    kubectl config use-context gke_optoro-$1-service_us-central1_gke-cluster-optoro-$1-service
  fi
}

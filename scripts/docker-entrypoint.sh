#!/usr/bin/env bash
set -e

if [ -n "$GCP_KEY_FILE" ]; then
  echo ${GCP_KEY_FILE} | base64 -d >> /tmp/gcp_key.json
  gcloud auth activate-service-account --key-file /tmp/gcp_key.json
  [ $? == 0 ] && echo "✅ gcloud authenticated successfully"
else
  echo "⚠️  gcloud not authenticated - GCP_KEY_FILE env var not found, please authenticate manually."
fi

exec "$@"

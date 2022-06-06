#!/bin/bash

set -x -e

# generate a security policy session for python app using template
unset MRENCLAVE SCONE_CONFIG_ID
export MRENCLAVE=$(SCONE_HASH=1 python) # get MRENCLAVE/HASH of python
envsubst '$MRENCLAVE $POSTFIX' < session_template.yml > session.yml
unset MRENCLAVE SCONE_CONFIG_ID 

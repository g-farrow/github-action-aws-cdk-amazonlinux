#!/bin/sh

set -e

pip3 install --user -r requirements.txt

sh -c "cdk $*"

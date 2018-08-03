#!/bin/bash
#
# pause; press enter to continue
#

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
ls -lF "$SQ_HOME/extensions/plugins"

echo "pause; press enter to continue"
read

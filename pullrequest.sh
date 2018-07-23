#!/bin/bash
###############################
# sets property sonar.web.javaAdditionalOpts in sonar.properties to activate debug
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "enabling pull requests"
set_property sonar.pullrequest.enabled true $SQ_HOME/conf/sonar.properties

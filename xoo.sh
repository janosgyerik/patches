#!/bin/bash
#
# copy the sonar-xoo plugin jar to the extension directory

set -euo pipefail

. "$(dirname "${BASH_SOURCE[0]}")"/functions.sh

SQ_HOME=$1

set_dev
PLUGIN_DIR=$DEV/sonar-enterprise/plugins/sonar-xoo-plugin/build/libs

replace_plugin "$SQ_HOME" "$PLUGIN_DIR" sonar-xoo-plugin

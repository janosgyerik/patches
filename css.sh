#!/usr/bin/env bash

set -euo pipefail

. scripts/property_utils.sh
. "$(dirname "${BASH_SOURCE[0]}")/functions.sh"

set_dev
plugin=css
replace_plugin "$1" "$DEV/sonar-$plugin/sonar-$plugin-plugin/target" sonar-$plugin-plugin

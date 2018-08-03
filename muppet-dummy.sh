set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

set_property muppet.secret.token foo $SQ_HOME/conf/sonar.properties

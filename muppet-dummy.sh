set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

setp() {
    local name=$1; shift
    local value=$1; shift
    set_property "$name" "$value" "$SQ_HOME/conf/sonar.properties"
}

setp muppet.secret.token foo
setp sonar.muppet.url "http://127.0.0.1:9876"

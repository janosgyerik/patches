set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
port=5005
suspend=n

setp() {
    local name=$1; shift
    local value=$1; shift
    set_property "$name" "$value" "$SQ_HOME/conf/sonar.properties"
}

echo "enabling debug on web server, listening on port $port"
setp sonar.web.javaAdditionalOpts "-agentlib:jdwp=transport=dt_socket,server=y,suspend=$suspend,address=$port"

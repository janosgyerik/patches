set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

setp() {
    local name=$1; shift
    local value=$1; shift
    set_property "$name" "$value" "$SQ_HOME/conf/sonar.properties"
}

setp sonar.cloud.autoscan.authSecret "$SC_AUTOSCAN_CORE_AUTH_SECRET"
setp sonar.cloud.eventsCoreQueue.authSecret "$SC_CORE_EVENTS_CORE_AUTH_SECRET"
setp sonar.cloud.analysisStatusService.url "$X_GET_STATUS_URL"
setp sonar.cloud.analysisStatusService.authSecret "$SC_ANALYSIS_STATUS_GET_STATUS_AUTH_SECRET"

setp sonar.cloud.shared.eventsTopic.region eu-west-1
setp sonar.cloud.shared.eventsTopic.arn "$X_EVENTS_TOPIC"

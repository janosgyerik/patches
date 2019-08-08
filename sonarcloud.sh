set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

setp() {
    local name=$1; shift
    local value=$1; shift
    set_property "$name" "$value" "$SQ_HOME/conf/sonar.properties"
}

prop_name=sonar.cloud.shared.EventsCoreQueueUri
prop_value=https://sqs.$AWS_REGION.amazonaws.com/$AWS_NNN/Core-Events-$ENV_NAME-Q
setp "$prop_name" "$prop_value"

prop_name=sonar.cloud.autoscan.authSecret
prop_value=$SC_AUTOSCAN_CORE_SECRET
setp "$prop_name" "$prop_value"

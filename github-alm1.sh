set -euo pipefail

source scripts/property_utils.sh
source $HOME/config/github/alm1.sh

SQ_HOME=$1
CONF=$SQ_HOME/conf/sonar.properties

setp() {
    local key=$1
    local value=$2
    set_property "$key" "$value" "$SQ_HOME/conf/sonar.properties"
}

setp sonar.pullrequest.github.endpoint "https://api.github.com"
setp sonar.core.serverBaseURL "https://janos.eu.ngrok.io"

setp sonar.sonarcloud.enabled "true"
setp sonar.alm.github.app.id "$app_id"
setp sonar.alm.github.app.name "$app_name"
setp sonar.alm.github.app.webhookSecret "$app_webhookSecret"
setp sonar.alm.github.app.privateKeyContent.secured "$app_privateKeyContent"

setp sonar.alm.github.app.clientId "$app_clientId"
setp sonar.alm.github.app.clientSecret "$app_clientSecret"

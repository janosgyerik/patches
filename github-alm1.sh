set -euo pipefail

source scripts/property_utils.sh
source $HOME/config/github/alm1.sh

SQ_HOME=$1

set_property sonar.sonarcloud.enabled "true" "$SQ_HOME/conf/sonar.properties"
set_property sonar.alm.github.app.id "$app_id" "$SQ_HOME/conf/sonar.properties"
set_property sonar.alm.github.app.name "$app_name" "$SQ_HOME/conf/sonar.properties"
set_property sonar.alm.github.app.webhookSecret "$app_webhookSecret" "$SQ_HOME/conf/sonar.properties"
set_property sonar.alm.github.app.privateKey "$app_privateKey" "$SQ_HOME/conf/sonar.properties"

# https://docs.sonarqube.org/display/PLUG/GitHub+Authentication+Plugin
#set_property sonar.auth.github.enabled "true" "$SQ_HOME/conf/sonar.properties"
#set_property sonar.auth.github.clientId "$clientId" "$SQ_HOME/conf/sonar.properties"
#set_property sonar.auth.github.clientSecret "$clientSecret" "$SQ_HOME/conf/sonar.properties"

set -euo pipefail

source scripts/property_utils.sh
source "$HOME/config/gitlab/alm1.sh"

SQ_HOME=$1

setp() {
    local key=$1
    local value=$2
    set_property "$key" "$value" "$SQ_HOME/conf/sonar.properties"
}

setp sonar.core.serverBaseURL "https://janos.eu.ngrok.io"

setp sonar.auth.gitlab.enabled true
setp sonar.auth.gitlab.applicationId "$gitlab_application_id"
setp sonar.auth.gitlab.secret "$gitlab_secret"

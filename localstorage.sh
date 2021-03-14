source scripts/property_utils.sh

SQ_HOME=$1

setp() {
    set_property "$1" "$2" "$SQ_HOME/conf/sonar.properties"
}


echo "enabling local storage for scanner reports"
setp "sonar.reports.storage.type" "local"

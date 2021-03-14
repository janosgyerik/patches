source scripts/property_utils.sh

SQ_HOME=$1

setp() {
    set_property "$1" "$2" "$SQ_HOME/conf/sonar.properties"
}


echo "enable S3 bucket for scanner reports"
setp "sonar.reports.storage.type" "s3"
setp "sonar.reports.storage.s3.name" "cvi-sc-2102-test-bucket"
setp "sonar.reports.storage.s3.name" "janos-test1"

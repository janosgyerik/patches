#!/usr/bin/env bash

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

setp() {
    local name=$1
    local value=$2
    set_property "$name" "$value" "$SQ_HOME/conf/sonar.properties"
    echo "$name = $value"
}

if ! [[ ${CE_HARD_TIMEOUT+x} ]]; then
    ((CE_HARD_TIMEOUT = CE_TIMEOUT + 1))
fi

if ! [[ ${CE_GRACEFUL_TIMEOUT_MS+x} ]]; then
    ((CE_GRACEFUL_TIMEOUT_MS = 1000 * CE_HARD_TIMEOUT))
fi

# note: the values are in seconds
setp sonar.ce.task.timeoutSeconds "$CE_TIMEOUT"
setp sonar.ce.task.hardTimeoutSeconds "$CE_HARD_TIMEOUT"
setp sonar.ce.gracefulStopTimeOutInMs "$CE_GRACEFUL_TIMEOUT_MS"
setp sonar.ce.task.maxExecutionCount 1

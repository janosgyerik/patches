#!/bin/bash
#
# copy content from a reference backup
#

set -euo pipefail

SQ_HOME=$1

ref=tmp/refs/upvotejs
cp -v "$ref"/data/*.db "$SQ_HOME/data/"
cp -v "$ref"/extensions/plugins/*.jar "$SQ_HOME/extensions/plugins/" || :
cp -v "$ref"/conf/sonar.properties "$SQ_HOME/conf/" || :

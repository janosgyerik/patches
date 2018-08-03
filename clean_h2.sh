#!/bin/bash
#

set -euo pipefail

SQ_HOME=$1
rm -f "$SQ_HOME/data"/*.db

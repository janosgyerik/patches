set -euo pipefail

SQ_HOME=$1

conf=$1/conf/sonar.properties

last_line='#sonar.search.httpPort=-1'

echo "delete from sonar.properties everything after line: $last_line"
sed -ne "1,/^$last_line\$/p" "$conf" > "$conf.work"
cp "$conf" "$conf.bak"
mv "$conf.work" "$conf"

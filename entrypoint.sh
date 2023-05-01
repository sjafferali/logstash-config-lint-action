#!/bin/sh -l


mustache_url="https://github.com/breml/logstash-config/releases/download/v${1}/mustache_${1}_Linux_x86_64.tar.gz"

wget -q -O - "${mustache_url}" | tar -xz mustache

files_to_lint=$(find "$2" -type f -name "*.conf")

[ -z "$files_to_lint" ] && echo "No files found to lint" && exit 0

echo Checking files:
for i in $files_to_lint; do
    echo " - $i"
done

./mustache check $files_to_lint

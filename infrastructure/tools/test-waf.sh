#!/usr/bin/env bash

[[ -z "$1" ]] && { echo "Usage: $0 <URL>"; exit; } || url=$1

for i in {1..3000}; do
  curl -s -o /dev/null "$url" & 
done
wait


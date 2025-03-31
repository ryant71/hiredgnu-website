#!/usr/bin/env bash

for i in {1..3000}; do
  curl -s -o /dev/null https://hiredgnu.net/ & 
done
wait


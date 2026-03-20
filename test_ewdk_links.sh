#!/bin/bash
links=(
  "https://go.microsoft.com/fwlink/?linkid=2196231" # 22H2
  "https://go.microsoft.com/fwlink/?linkid=2273579" # 24H2
  "https://go.microsoft.com/fwlink/?linkid=2128854" # 2004
  "https://go.microsoft.com/fwlink/?linkid=2120253" # Win 10 2004
  "https://go.microsoft.com/fwlink/?linkid=2085767" # Win 10 1903
)

for link in "${links[@]}"; do
  echo "Testing $link"
  curl -I -s "$link" | grep -i location
done

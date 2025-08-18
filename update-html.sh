#!/bin/bash

find src -name "*.md" -type f | \
while read -r FILE
do
  OUT=${FILE#src/}
  OUT="output/${OUT%.md}.html"
  pandoc --from markdown --to html \
  "$FILE" -o $OUT \
  --css=src/styles.css --standalone --embed-resources
done

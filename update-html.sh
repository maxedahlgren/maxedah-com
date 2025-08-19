#!/bin/bash

cd src
find . -name "*.md" | sed 's|^\.\/||' | \
while read -r FILE
do
  pandoc --from markdown --to html \
  $FILE -o "../output/${FILE%.md}.html" \
  --css="styles.css" --standalone --embed-resources \
  --metadata lang=en
done

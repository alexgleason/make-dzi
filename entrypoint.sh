#!/bin/bash
for file in /app/files/*; do
  vips dzsave $file /app/dzi/$(basename "$file" | sed 's/\(.*\)\..*/\1/')
done
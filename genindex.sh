#!/bin/sh

cat <<EOF >index.md
---
---

# Recipes

EOF

for entry in recipes/*
do
    echo "[$entry]($entry)\n" >> index.md 
done

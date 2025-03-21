#!/bin/sh

cat <<EOF > index.md
---
---

# 📖 Recipes

EOF

for entry in recipes/*.md; do
    name=$(basename "$entry" .md)
    display_name=$(echo "$name" | sed -E 's/-/ /g' | sed -E 's/\b(.)/\u\1/g')
    echo "- [$display_name]($entry)" >> index.md
done

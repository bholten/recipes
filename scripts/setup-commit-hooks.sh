#!/bin/sh

mkdir -p .git/hooks

cat <<EOF >.git/hooks/pre-commit
#!/bin/sh
./scripts/generate-index.sh
git add index.md
EOF

chmod +x .git/hooks/pre-commit

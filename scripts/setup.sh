#!/usr/bin/env bash
set -euo pipefail

git config --global alias.audit '!f() { bash "$(git rev-parse --show-toplevel)/scripts/update-dashboard.sh"; }; f'

echo "Alias 'git audit' configurado."
echo "Ejecuta 'git audit' desde cualquier rama del repo."

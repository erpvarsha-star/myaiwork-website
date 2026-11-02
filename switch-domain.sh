#!/usr/bin/env bash
# Switch the site from the Netlify subdomain to the real domain.
#
#   ./switch-domain.sh myaiwork.in
#
# Rewrites every hardcoded URL in HTML, XML and TXT files. Run from the
# repo root, check `git diff`, then commit and push. Netlify DNS and the
# redirect are configured separately — see _business-plan/DomainSwitch.md.

set -euo pipefail
NEW="${1:-}"
OLD="myaiwork.netlify.app"

if [[ -z "$NEW" ]]; then
  echo "usage: ./switch-domain.sh <new-domain>   e.g. ./switch-domain.sh myaiwork.in" >&2
  exit 1
fi
if [[ "$NEW" == http* || "$NEW" == */* ]]; then
  echo "give the bare hostname only, no https:// and no trailing slash" >&2
  exit 1
fi

count=$(grep -rl "$OLD" --include='*.html' --include='*.xml' --include='*.txt' . | wc -l)
echo "Rewriting $OLD -> $NEW across $count file(s)..."

grep -rl "$OLD" --include='*.html' --include='*.xml' --include='*.txt' . \
  | xargs sed -i "s|$OLD|$NEW|g"

echo
echo "Done. Remaining references to $OLD (should be none):"
grep -rn "$OLD" --include='*.html' --include='*.xml' --include='*.txt' . || echo "  none"
echo
echo "Next:"
echo "  1. git diff            # check it"
echo "  2. git commit -am 'Point site at $NEW' && git push"
echo "  3. Netlify: Domain settings -> add $NEW as primary domain"
echo "  4. Search Console: add https://$NEW as a URL-prefix property"

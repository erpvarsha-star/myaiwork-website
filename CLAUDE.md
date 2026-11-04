# CLAUDE.md — MY AI Work website

Project rules and decisions for anyone (human or Claude) working on this repo. Full reasoning behind every F-number decision lives in `_business-plan/MasterFile_v2_29OCT2026_2043.md` (gitignored, local-only).

## Repo structure
- Plain HTML/CSS/JS, no build step. `index.html` is the entire site.
- `_business-plan/` is **gitignored on purpose** — internal strategy docs that must never ship on the live site. Treat it as local-only; it will not appear in `git diff` or PRs.
- Branch `main` is production (auto-deploys via Netlify). Feature work happens on a branch, merged via PR.

## Frozen terminology — do not relitigate
- **"Leak" is permanently banned**, everywhere (site copy, meta/OG tags, JSON-LD, filenames, UTM params, form fields, and all internal `_business-plan/` docs). Use **"Bottleneck"** / **"Bottlenecked"**.
- Product name is **"Operations Audit"**, not "Leak Audit". The page is `operations-audit.html`.
- Primary CTA verb is **"Book an Operations Audit"** (not "Request"), always paired with the microcopy: "We will confirm your exact slot manually on WhatsApp."

## Other frozen decisions (see MasterFile for full detail)
- **F22**: Operations Audit fee is ₹9,999 flat, no exceptions, refundable in full if no meaningful bottleneck is found. Only concession: clients 1–5 may pay after reading the report rather than before.
- **F23**: No personal name anywhere on the site.
- **F27**: Company is **MY AI Work**; primary domain is **myaiwork.in**.
- **F28**: Palette stays forest green/cream/coral.
- Audit is always **2 hours** — never "20 minutes" in an audit context.
- Pricing is **prose, not cards**. Builds are stated as a range (₹35,000–₹1,00,000) and never quoted above ₹1,00,000 in writing.
- **No case studies, client names, or metrics** go live until a real client gives written approval on specific figures. A hidden (HTML-commented) testimonials block exists as a placeholder only — never render it with invented content.
- **No embedded Razorpay button, script, or raw payment URL** anywhere. Payment copy is text-only: "you'll receive a secure Razorpay payment link."
- Client-facing systems must route model calls through one swappable configuration point — never hard-locked to a single AI vendor.

## Domain switch procedure
`switch-domain.sh <domain>` rewrites every hardcoded `myaiwork.netlify.app` URL (HTML/XML/TXT) to the real domain. **Do not run it until DNS is confirmed actually resolving to Netlify** — check live with `curl`/`dig` first; a purchased domain with nameservers pointed is not the same as DNS having propagated. Running it early breaks canonical/OG tags and the sitemap against a domain that doesn't yet serve the site.

## Process notes
- This repo uses a designated CCR branch (`ccr-0e30b30d-dugpfi`) for Claude Code Remote sessions per the harness's branch convention. If that branch's PR has already merged, don't stack new commits on old merged history — restart it from `main` and push fresh, or work from another feature branch and open a new PR, rather than force-pushing (force-push is blocked by this environment's auto-mode classifier for destructive git operations).
- GitHub's merge API can occasionally get stuck ("405 Merge already in progress" / intermittent 502s) without `main` advancing. If this happens, wait and retry rather than assume it failed outright — it has resolved itself within ~1–2 hours in practice. Verify with `git ls-remote origin main` before concluding a merge did or didn't land.

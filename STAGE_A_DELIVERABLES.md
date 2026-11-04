# Stage A Deliverables — MY AI Work Website

## Summary of Changes

**Stage A** covered a site-wide terminology rename plus a new content section:

- **Leak → Bottleneck rename (site-wide, permanent)**: every instance of "Leak" / "Leak Audit" was replaced with "Bottleneck" / "Operations Audit" across copy, meta tags, OG tags, JSON-LD, filenames, UTM params, and form fields. "Leak" is now a permanently banned term in this repo (see `CLAUDE.md`).
- **Product rename**: "Leak Audit" → **"Operations Audit"**, served from `operations-audit.html`.
- **CTA copy**: primary call-to-action verb changed to **"Book an Operations Audit"** (was "Request"), always paired with the microcopy "We will confirm your exact slot manually on WhatsApp."
- **New `/insights` section**: added `insights.html` plus two long-form articles (`insights/5-ai-use-cases-that-survive-the-shop-floor.html`, `insights/ai-for-institutional-knowledge-in-manufacturing.html`).
- **Hero and supporting page updates**: hero copy and CTA blocks updated across `index.html`, `ai-automation-pune.html`, `ai-for-business-owners.html`, `whatsapp-ai-for-business.html`, `workshop.html`, `terms.html`, `privacy.html`, and the `guides/` pages to match the new terminology and CTA verb.

Merged to `main` via **PR #2**.

## Before/After Highlights

- Product name: "Leak Audit" → **"Operations Audit"**
- Core metaphor: "leak" → **"bottleneck"** (Time, Reliability, Revenue bottlenecks)
- CTA verb: "Request an Audit" → **"Book an Operations Audit"**
- CTA microcopy added: *"We will confirm your exact slot manually on WhatsApp."*
- New top-level section: **`/insights`** (2 articles live at launch)
- All internal links, filenames, and UTM campaign params updated to match — no "leak" references remain anywhere in the repo (verified via repo-wide grep)

## Deployment Status

| Item | Status |
|---|---|
| Live URL | **https://myaiwork.in** |
| SSL certificate | **Active** (Let's Encrypt, verified in Netlify) |
| DNS propagation | **Complete globally** (A record → `75.2.60.5`, CNAME `www` → `myaiwork.netlify.app`) |
| Domain switch script | Run — all 16 files rewritten from `myaiwork.netlify.app` to `myaiwork.in` (canonical tags, OG tags, `sitemap.xml`, `robots.txt`) |
| MX records (email) | **Not yet configured** — Google Workspace not purchased; DNS zone is on NS1/Netlify DNS and ready to receive MX records whenever Workspace is bought |
| Search Console verification | **Not yet added** — no verification tag/file found in repo; still a manual step |

## Stage B Status

**Stage B (SEO / Competitive Audit) is pending owner approval.** No work has started on this stage.

# Pending — MY AI Work

**Last updated:** 5 Nov 2026, end of session

---

## NEXT PRIORITY

1. **[ ] Confirm `myaiwork.in` DNS resolves to Netlify, then run `./switch-domain.sh myaiwork.in`.**
   Nameservers were pointed to Netlify in Wix this session (`dns1.p09.nsone.net` / `dns2.p09.nsone.net`), but propagation had **not yet** been verified live before the session ended. Do not run `switch-domain.sh` until a fresh `curl`/`dig` check confirms `myaiwork.in` actually serves the site (not Wix's "domain not connected" page). Once confirmed, also: add `myaiwork.in` + `www.myaiwork.in` as custom domains inside the Netlify dashboard (no MCP tool covers this — manual step), get the exact A-record/CNAME target Netlify shows for this project, verify Google Search Console, and fix `hello@myaiwork.in` (currently bounces).

---

## DONE THIS SESSION

- [x] `_business-plan/` internal docs: "Leak"/"Leak Audit" → "Bottleneck"/"Operations Audit" sweep (all 15 docs, gitignored). `LeakTeardowns_W1-4/W5-8` → `BottleneckTeardowns_W1-4/W5-8`.
- [x] Repo `README.md` tagline updated to match the same rename.
- [x] PR #2 (`v3-stage-a` → `main`): full site-wide Leak→Bottleneck rename, CTA verb "Request"→"Book an Operations Audit", new `/insights` section, trust/offer-ladder fixes. **Merged to `main`.**
- [x] Stage A Deliverables Pack produced (Change Log, Page Inventory, Claims Register, Commercial Terms Register) and delivered to the user.
- [x] Updated handoff doc (`HANDOFF_MYAIWORK_04NOV2026_1500.md`) produced, superseding the 2 Nov version.

## BACKLOG (after domain goes live)

- [ ] Send one real screenshot from the owner's own attendance/PR→PO system (replaces the "illustrative example" sample report).
- [ ] Make the two warm-network sales calls (script: `_business-plan/WarmCallKit_29OCT2026_2043.md`).
- [ ] Submit WhatsApp Business API application (1–3 week lead time — start this as soon as the domain is confirmed, don't wait on anything else).
- [ ] Stand up a VPS + n8n instance; import the 3 ready workflows (`_business-plan/n8n/`).
- [ ] Build n8n workflows for Agents A4 (Brief) and A5 (Report) — prompts exist, workflows don't.

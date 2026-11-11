# Adspirer Analytics for Perplexity

Read-only marketing analytics and attribution. Report ad performance across Google, Meta, TikTok, LinkedIn, Amazon, Microsoft, ChatGPT and Walmart Ads, plus GA4, Search Console and Tag Manager. Changes nothing.

This package connects Perplexity to the hosted Adspirer Analytics MCP server and gives its agent the
skills to use it well. It covers Google, Meta, TikTok, LinkedIn, Amazon, Microsoft, ChatGPT and Walmart Ads, plus GA4, Search Console and Tag Manager (read-only). It is read-only: it cannot create, change, pause or delete anything.

## What's included

| File | Purpose |
| --- | --- |
| [connector.json](connector.json) | Connector details: name, URL, sign-in, logo, links |
| [LISTING.md](LISTING.md) | Paste-ready name, descriptions and submission notes |
| [AGENT.md](AGENT.md) | Agent instructions to paste into Perplexity |
| `skills/` | 10 Agent Skills (`SKILL.md` folders) |
| `dist/skills/` | The same skills as one zip each, for upload |
| `prompts/` | Saved prompts for common reports |
| `examples/` | Agent API request examples |

## Connect in Perplexity

1. Open **Settings → Connectors** and choose **Custom connector → Remote**.
2. Name it `Adspirer Analytics` and enter the URL `https://mcp.adspirer.com/analytics`.
3. Sign in with your Adspirer account in the browser window.
4. Connect your ad accounts at https://adspirer.ai/connections.

Custom connectors are reported to need a paid Perplexity plan, and admin permission in
organizations. Menu labels change; check Perplexity's help center if yours differ.

## Use with the Perplexity Agent API

A Project administrator adds the server once on the Project connectors page in the API Console
(server name, MCP URL, authentication, transport **Streamable HTTP**), then copies the connector
ID. Requests reference it by ID; see [examples/agent_api.py](examples/agent_api.py) and
[examples/agent_api.sh](examples/agent_api.sh).

Open question: Perplexity's documentation lists **API Key or None** as the authentication choices
for custom connectors in the API Console, and Adspirer Analytics signs in with browser OAuth. This has not
been tested. If OAuth is not offered there, ask Perplexity (api@perplexity.ai) before relying on
the Agent API route; the app route above is the supported one.

## Add the skills

Perplexity Computer is reported to import Agent Skills (`SKILL.md` folders); this has not been
tested with these skills. Each skill is in `skills/` and zipped in `dist/skills/`. Where skills
are not available, paste [AGENT.md](AGENT.md) into the Space or Computer instructions instead.

| Skill | Use it for |
| --- | --- |
| `adspirer-analytics-attribution` | Diagnose attribution and the conversion funnel across channels — where conversions are credited, where the funnel drops and why ads may not convert. Use when the user asks why ads are not converting, which channel deserves credit, or why platform and GA4 numbers disagree. |
| `adspirer-analytics-competitor-research` | Find wasted ad spend and research the ads competitors are running from public ad libraries. Use when the user asks where budget is wasted, which keywords, placements or audiences spend without converting, or what ads a named competitor is running. Never infers a competitor's private spend. |
| `adspirer-analytics-conversion-tracking` | Audit and grade conversion tracking across Google, Meta, LinkedIn and other channels plus GA4, Tag Manager and the Meta Pixel. Use when the user asks whether tracking is set up correctly, why conversions show zero, or whether a pixel or tag is firing. Read-only; it changes no tags. |
| `adspirer-analytics-cross-channel` | Build blended cross-platform ad reports — spend, clicks, conversions, CPA, ROAS and trends by channel across Google, Meta, TikTok, LinkedIn, Amazon, Microsoft, ChatGPT and Walmart Ads. Use when the user asks to compare channels, wants a blended total, or asks for a weekly or monthly performance report. |
| `adspirer-analytics-platform-reports` | Report one ad platform in depth — Google, Meta, TikTok, LinkedIn, Amazon, Microsoft (Bing), ChatGPT or Walmart Ads — at campaign, ad group, ad, keyword, search-term, audience or product level. Use when the user names one platform or asks for its campaigns, search terms, creatives, placements or ACoS. |
| `adspirer-analytics-product-help` | Answer questions about Adspirer Analytics itself — supported platforms, pricing, plans, usage quota, connections and troubleshooting — from current documentation. Use when the user asks about Adspirer, their plan or quota, or why a connection or report is not working. |
| `adspirer-analytics-setup` | Connect and choose the ad accounts, GA4 properties, Search Console sites and Tag Manager containers to report on. Use when the user asks what is connected, which account or property to use, how to link a platform, or sees a not-connected or auth error. |
| `adspirer-analytics-strategy` | Plan a read-only marketing-analytics answer and route it to the right Analytics skill. Use when a request is broad or mixed, such as 'how are my ads doing', 'where should I focus', or a question spanning several platforms, attribution and site analytics. |
| `adspirer-analytics-tools` | Call the read-only Adspirer Analytics MCP tools correctly: pick the platform router, discover operations, fetch the live schema and execute. Use before any Adspirer Analytics tool call, or when a router, operation name or argument is unclear. This connector only reads; it has no write tools. |
| `adspirer-analytics-web-analytics` | Read Google Analytics 4, Google Search Console and Google Tag Manager — traffic, key events, organic queries and pages, URL inspection and tag configuration. Use when the user asks about sessions, conversions in GA4, organic search, rankings, indexing status or which tags are installed. |

## Saved prompts

- [`prompts/adspirer-analytics-tracking-audit.md`](prompts/adspirer-analytics-tracking-audit.md) — Audit and grade conversion tracking across your ad platforms, GA4, Tag Manager and the Meta Pixel, read-only, and list the gaps to fix.
- [`prompts/adspirer-analytics-wasted-spend.md`](prompts/adspirer-analytics-wasted-spend.md) — Find ad spend that is not converting — search terms, keywords, placements and audiences — across your connected platforms, read-only.
- [`prompts/adspirer-analytics-weekly-report.md`](prompts/adspirer-analytics-weekly-report.md) — Build a read-only cross-channel performance report for the last complete week (or a period you name) across your connected ad platforms.

## Example prompts

- "Show spend, clicks, conversions, CPA and ROAS by channel for the last 30 days, with a blended total."
- "Walk my conversion funnel and tell me where it breaks."
- "Is my conversion tracking set up correctly across Google, Meta and GA4?"

## Safety

- It is read-only: it cannot create, change, pause or delete anything.
- **No purchases.** The agent never buys, upgrades, renews or starts a trial of a subscription or
  paid feature for you, including when it runs on its own with browser or payment tools. At a
  quota or plan limit it stops, explains and waits.
- **No unattended changes.** Scheduled or background runs are read-only.
- Sign-in is browser OAuth. Never paste tokens into chat.

An Adspirer account and an applicable plan are required; ad-platform permissions and usage limits
apply.

## Status

Built from https://github.com/Adspirer/adspirer-analytics-cursor-plugin v1.0.0 on 2026-11-11. Not yet installed or tested in
Perplexity. Run `node scripts/validate.mjs` after editing.

## Support

- Support: support@adspirer.com
- Documentation: https://www.adspirer.com/docs
- Privacy: https://www.adspirer.com/privacy
- Terms: https://www.adspirer.com/terms
- Security: see [SECURITY.md](SECURITY.md)

# Adspirer Analytics — Perplexity listing details

| Field | Value |
| --- | --- |
| Name | Adspirer Analytics |
| MCP server URL | `https://mcp.adspirer.com/analytics` |
| Transport | Streamable HTTP |
| Sign-in | OAuth 2 in the browser (PKCE); no API key |
| Category | Data & Analytics |
| Read-only | Yes |
| Logo (1:1) | https://storage.googleapis.com/adspirer-images-v1/brand/adspirer-logo-square.svg |
| Website | https://www.adspirer.com/analytics |
| Documentation | https://www.adspirer.com/docs |
| Privacy | https://www.adspirer.com/privacy |
| Terms | https://www.adspirer.com/terms |
| Support | support@adspirer.com |

## Short description

Read-only marketing analytics and attribution. Report ad performance across Google, Meta, TikTok, LinkedIn, Amazon, Microsoft, ChatGPT and Walmart Ads, plus GA4, Search Console and Tag Manager. Changes nothing.

## Long description

Adspirer Analytics connects Perplexity to your advertising accounts through a hosted MCP server. It covers
Google, Meta, TikTok, LinkedIn, Amazon, Microsoft, ChatGPT and Walmart Ads, plus GA4, Search Console and Tag Manager (read-only). It is read-only: it cannot create, change, pause or delete anything. The agent never purchases or upgrades a subscription on your behalf. Sign-in
is browser OAuth with your Adspirer account; ad accounts are connected at
https://adspirer.ai/connections. An Adspirer account and an applicable plan are required.

## Example prompts

- "Show spend, clicks, conversions, CPA and ROAS by channel for the last 30 days, with a blended total."
- "Walk my conversion funnel and tell me where it breaks."
- "Is my conversion tracking set up correctly across Google, Meta and GA4?"

## Getting listed

Perplexity has no self-serve directory for third-party connectors. Users add Adspirer Analytics as a
custom connector with the URL above. To ask for it to be offered as a managed connector, email
api@perplexity.ai:

```
Subject: Managed connector request: Adspirer Analytics

Hi Perplexity team,

We'd like to request Adspirer Analytics as a managed connector.

Read-only marketing analytics and attribution. Report ad performance across Google, Meta, TikTok, LinkedIn, Amazon, Microsoft, ChatGPT and Walmart Ads, plus GA4, Search Console and Tag Manager. Changes nothing.

- MCP server: https://mcp.adspirer.com/analytics (Streamable HTTP, browser OAuth with PKCE)
- Platforms: Google, Meta, TikTok, LinkedIn, Amazon, Microsoft, ChatGPT and Walmart Ads, plus GA4, Search Console and Tag Manager (read-only)
- Read-only: no tool changes any account.
- Logo: https://storage.googleapis.com/adspirer-images-v1/brand/adspirer-logo-square.svg
- Website: https://www.adspirer.com/analytics
- Docs: https://www.adspirer.com/docs
- Contact: support@adspirer.com

It already works as a custom remote connector in the Perplexity app. Please let us know what
you need from us for review.

Thanks,
Abhi
```

# Govind Shankar Kumar - Portfolio

Personal portfolio and CV of Govind Shankar Kumar, B.Tech Information Technology student at VIT.

- **Live site:** https://govind-portfolio.govisk.workers.dev
- **PDF:** https://govind-portfolio.govisk.workers.dev/Govind_Shankar_Kumar_Portfolio.pdf

## How it works

- `portfolio.html` is the single source. It prints as a two-page A4 CV and also works as a responsive web page.
- `build.sh` renders the PDF with headless Chrome, copies both files into `site/`, and deploys `site/` to Cloudflare Workers with Wrangler.

## Updating

Edit `portfolio.html`, then run:

```sh
sh build.sh
```

#!/bin/sh
# Rebuild the PDF from portfolio.html and redeploy the public site.
set -e
cd "$(dirname "$0")"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf=Govind_Shankar_Kumar_Portfolio.pdf "file://$PWD/portfolio.html" 2>/dev/null
cp portfolio.html site/index.html
cp Govind_Shankar_Kumar_Portfolio.pdf site/
~/Projects/smart_inbox_web/node_modules/.bin/wrangler deploy
echo BUILD_DONE

#!/usr/bin/env bash
docker-compose up -d
jenkins_url=$(python3 setup_webhooks.py)
echo "JENKINS is now accessable at $jenkins_url"
curl \
  -X PATCH \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer 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" \
    -d '{"url": "$jenkins_url","content_type":"json","insecure_ssl":"0"}'\
      https://api.github.com/repos/AhmadG-coder/aurora-labs-homework/hooks/383056256/config



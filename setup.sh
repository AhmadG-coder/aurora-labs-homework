#!/usr/bin/env bash
docker-compose up -d
sleep 10 # until URL is available
jenkins_url=$(python3 setup_webhooks.py)
echo "JENKINS is now accessable at $jenkins_url"
json_configuration=$(jq '.url = $jenkins_url' --arg jenkins_url $jenkins_url webhook_configuration.json)
echo $json_configuration > webhook_configuration.json
json_configuration=$(jq '.url += "/github-webhook/"' webhook_configuration.json)
echo $json_configuration > webhook_configuration.json
curl \
  -X PATCH \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer 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  " \
    -d "$json_configuration" \
      https://api.github.com/repos/AhmadG-coder/aurora-labs-homework/hooks/383056256/config



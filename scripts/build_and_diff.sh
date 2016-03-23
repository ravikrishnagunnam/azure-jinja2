#!/usr/bin/env bash

j2 azuredeploy.json.j2 | jq . > generated/azuredeploy.json
cat generated/azuredeploy.json | python -m json.tool > generated/azuredeploy.formatted.json
cat reference/azuredeploy.original.json | python -m json.tool > reference/azuredeploy.formatted.json
diff reference/azuredeploy.formatted.json generated/azuredeploy.formatted.json

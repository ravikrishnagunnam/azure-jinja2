#!/usr/bin/env bash

j2 azuredeploy.json.j2 | python -m json.tool > generated/azuredeploy.json
cat reference/azuredeploy.original.json | python -m json.tool > reference/azuredeploy.formatted.json
diff reference/azuredeploy.formatted.json generated/azuredeploy.json

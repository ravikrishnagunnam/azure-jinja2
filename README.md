# Some jinja2 macros to simplify Azure ARM templates development

[![Circle CI](https://circleci.com/gh/sebbrochet/azure-jinja2.svg?style=svg)](https://circleci.com/gh/sebbrochet/azure-jinja2)
[![Build Status](https://travis-ci.org/sebbrochet/azure-jinja2.svg?branch=master)](https://travis-ci.org/sebbrochet/azure-jinja2)
[![Build Status](https://drone.io/github.com/sebbrochet/azure-jinja2/status.png)](https://drone.io/github.com/sebbrochet/azure-jinja2/latest)

## Requirements
* jinja2 CLI
  * `pip install j2cli`
* jq for pretty-printing (optional)
  * Use your package manager (apt, yum, ...)

## Intallation
* Clone this repo
  * `git clone https://github.com/sebbrochet/azure-jinja2.git`
* Create a symbolic link in the directory where you plan to use the macro
  * `cd my_template_dir`
  * `ln -s <just_cloned_directory> azure-jinja2`
* Hack your ARM templates as shown in the [examples](examples) directory...

## Usage
* Generate your ARM template with your master jinja2 file
  * `j2 azuredeploy.json.j2 > generated/azuredeploy.json` 
* You can pretty-print it with jq (keep order) or json.tool (order is lost)
  * `j2 azuredeploy.json.j2 | jq . > generated/azuredeploy.json`
  * `j2 azuredeploy.json.j2 | python -m json.tool > generated/azuredeploy.json`

## API Reference
* HTML documentation of all macros is in the [docs directory](docs)

## BTW 
* You may find my [ARM template checker](https://github.com/sebbrochet/azure-arm-checker) useful to catch some errors before deploying your template on Azure...

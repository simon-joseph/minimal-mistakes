#!/bin/bash

# run Jekyll
bundle exec jekyll serve --config _config.yml,_config.dev.yml --drafts

## If you need to kill serve process use
##      ps aux | grep jekyll
## to find PID and
##      kill -9 PID

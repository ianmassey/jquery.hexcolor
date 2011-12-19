#!/bin/bash

echo 'Running pre-commit hook'
if git diff --no-ext-diff --cached --exit-code jquery.hexColor.js > /dev/null
then
  echo 'No changes made to plugin'
else
  echo 'Building minimized plugin'
  bash build/minify.bash
fi

#!/bin/bash

# Author: Airat Halitov
# GitHub: https://github.com/AiratHalitov/airat-aibolit-update
# License: GPLv3

rm -rf ai-bolit-hoster.zip ai-bolit tools changelog.txt readme.txt

wget -q https://download.cloudscan.tech:28080/partners/ai-bolit-hoster.zip

if [ -f ai-bolit-hoster.zip ]; then
    unzip -q ai-bolit-hoster.zip && rm -rf ai-bolit-hoster.zip
    # rm -rf changelog.txt readme.txt
    cp run-aibolit.sh ai-bolit/run-aibolit.sh && chmod +x ai-bolit/run-aibolit.sh
    echo "Done!"
fi

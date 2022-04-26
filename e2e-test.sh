#!/bin/bash

set -m

npm run start >/dev/null 2>&1 &
NODE_PID=$!
npm run e2e-test
kill $NODE_PID
pkill -f geckodriver
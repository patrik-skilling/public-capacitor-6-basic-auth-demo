#!/bin/bash
set -e

rm -rf ios 

npx cap add ios

npx cap sync ios

npx cap run ios
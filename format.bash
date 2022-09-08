#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

python make_timeline.py in.json > out.svg
sed -i "s/b\'<svg/<svg/g" out.svg
sed -i "s/vg>\'/vg>/g" out.svg
cat out.svg

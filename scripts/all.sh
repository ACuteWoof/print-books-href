#!/bin/sh

cd "${0%/*}"

./addbooks.sh && ./render.sh

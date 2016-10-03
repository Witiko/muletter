#!/bin/bash
# Parameters: PERLEXPR FILES
#
# Fetch pdf FILES from the university Google Drive storage and rename them
# according to the PERLEXPR.
set -e
shopt -s globstar
TEMP=`mktemp -d`
trap 'rm -rf $TEMP' EXIT
tar c "${@:2}" | tar xvC $TEMP/
rename -v "$1" $TEMP/**/*.pdf
chmod 644 *.pdf
chown `id | sed -r 's/.*uid=([^(]*).*/\1/'`:`id | sed -r 's/.*gid=([^(]*).*/\1/'` *.pdf

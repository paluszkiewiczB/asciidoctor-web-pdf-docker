#!/bin/bash

set -e

echoerr() { echo "$@" 1>&2; }

if [ $# -eq 0 ] || [ "$1" == "--help" ]; then
  echoerr "Generate document from adoc file"
  echoerr "Required one parameter: extension of a file. Valid values: pdf, html"
  echoerr "Reads adoc file from standard input"
  echoerr "Writes document to standard output"
  exit 0
fi

extension="$1"
touch document.adoc
while read -r line || [ -n "$line" ]; do
  echo "$line" >>document.adoc
done

touch "document.$extension"

npx asciidoctor-web-pdf document.adoc
cat "document.$extension"

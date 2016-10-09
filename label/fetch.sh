#!/bin/bash
# Fetch labels from the university Google Drive storage and rename them.
set -e
shopt -s globstar
shopt -s nullglob
../../fetch-pdf.sh \
 's#Univerzita–obecne#Ostatni-pracoviste/base#;
  s#Univerzita-rektorat#Ostatni-pracoviste/rect#;
  s#.*/(.*)/.*/.*/[^_]*_stitek_outline-prostor_cz\.pdf$#filetter-$1-czech.pdf#;
  s#.*/(.*)/.*/.*/[^_]*_stitek_cz\.pdf$#filetter-$1-czech-color.pdf#;
  s#.*/(.*)/.*/.*/[^_]*_stitek_outline-prostor_en\.pdf$#filetter-$1-english.pdf#;
  s#.*/(.*)/.*/.*/[^_]*_stitek_en\.pdf$#filetter-$1-english-color.pdf#;' \
  /media/*/gdrive/MU-JVS-AKTUALIZACE2015/**/stitky/pdf-cmyk-*/*_stitek{,_outline-prostor}_{cz,en}.pdf

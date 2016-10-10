#!/bin/bash
# Fetch logos from the university Google Drive storage and rename them.
set -e
shopt -s globstar
shopt -s extglob
shopt -s nullglob
../fetch-pdf.sh \
 's#.*/(.*)/.*/[^_]*_(logo|znak|pecet)-cb\.pdf$#muletter-$1-english.pdf#;
  s#.*/(.*)/.*/[^_]*_(logo|znak|pecet)-cmyk(-modra)?\.pdf$#muletter-$1-english-color.pdf#;
  s#.*/(.*)/.*/[^_]*_(logo|znak|pecet)-modra\.pdf$#muletter-$1-english-color.pdf#;
  s#.*/(.*)/.*/[^_]*_(logo|znak|pecet)-cb_cz\.pdf$#muletter-$1-czech.pdf#;
  s#.*/(.*)/.*/[^_]*_(logo|znak|pecet)-cmyk_cz\.pdf$#muletter-$1-czech-color.pdf#;
  s#.*/(.*)/.*/[^_]*_(logo|znak|pecet)-cb_en\.pdf$#muletter-$1-english.pdf#;
  s#.*/(.*)/.*/[^_]*_(logo|znak|pecet)-cmyk_en\.pdf$#muletter-$1-english-color.pdf#;' \
  /media/*/gdrive/MU-JVS-AKTUALIZACE2015/*/*/{znaky/!(mu)_znak-{cb,cmyk-modra,cmyk}{,_{cz,en}},loga/!(mu|cerit-sp)_{logo,pecet}-{cb,modra,cmyk}{,_{cz,en}}}.pdf 

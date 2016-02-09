#!/bin/sh

DST="tf:~/jdhp/jdhp.org-web/htdocs/docs/initiation_python"

rsync -a -v -e ssh slides.md ${DST}/
rsync -a -v -e ssh slides.html ${DST}/index.html

rsync -a -v -e ssh --delete fig ${DST}/
rsync -a -v -e ssh --delete fig-nonfree ${DST}/


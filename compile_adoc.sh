#!/bin/sh

DOCNAME=GENIEDevelopersManual.adoc

asciidoc $1 -b html5 -a latexmath -a data-uri -a toc2 ${DOCNAME}
# Experiment with math settings...
# asciidoc $1 -b html5 -a asciimath -a data-uri -a toc2 ${DOCNAME}
# asciidoc $1 -b html5  -a data-uri -a toc2 ${DOCNAME}
# a2x $1 -a latexmath -f xhtml -a toc2 ${DOCNAME}

a2x $1 -a latexmath -f pdf ${DOCNAME}
# Experiment with math settings...
# a2x --fop $1 -a latexmath -f pdf ${DOCNAME}

# dac

A container to generate the output PDF files from Markdown source files. I used
the [docker/latex](https://hub.docker.com/r/pandoc/latex) as its base image and
installs some additional things that I need:

- the [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) filter
- the [lastpage](https://ctan.org/pkg/lastpage?lang=en) latex package

More might follow in the future, but for now this is all I need :-).


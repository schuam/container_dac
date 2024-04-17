FROM docker.io/pandoc/latex:3.1.1-alpine

ARG CROSSREF_RELEASE=v0.3.15.2

RUN wget -O- \
    "https://github.com/lierdakil/pandoc-crossref/releases/download/"${CROSSREF_RELEASE}"/pandoc-crossref-Linux.tar.xz" \
    | tar xJ -C /usr/bin/ pandoc-crossref \
    && /opt/texlive/texdir/bin/default/tlmgr install lastpage


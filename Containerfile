FROM pandoc/latex:3.1.1-alpine

RUN apk add 'python3=3.10.13-r0' \
    && apk add 'py3-pip=22.1.1-r0' \
    && apk add 'gcc=11.2.1_git20220219-r2' \
    && apk add 'python3-dev=3.10.13-r0' \
    && apk add 'musl-dev' \
    && apk add 'linux-headers' \
    && pip install pandoc-fignos \
    && pip install pandoc-eqnos \
    && pip install pandoc-tablenos


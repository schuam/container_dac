# dac

A container to generate the output PDF files from Markdown source files. I used
the [docker/latex](https://hub.docker.com/r/pandoc/latex) as its base image and
installs some additional things that I need:

- the [pandoc-crossref](https://github.com/lierdakil/pandoc-crossref) filter
- the [lastpage](https://ctan.org/pkg/lastpage?lang=en) latex package
- the [koma-script](https://ctan.org/pkg/koma-script) latex package

More might follow in the future, but for now this is all I need :-).


## Usage

The image uses `/data` as its working directory and `pandoc` as its entrypoint.
That means when you bind the directory that holds the files you want to convert
with `pandoc` to the `/data` directory within the container, you don't have to
call `pandoc` within the contain and can just pass all options you would
normally pass to `pandoc` to the `podman run` command.

For example:

Assume you have a directory called **dac_test** that holds a file called
**dac_test.md**. If you want to convert that file into a PDF, you can run the
following command inside the **dac_test** directory:

```bash
podman run --rm - .:/data schuam/dac:latest -o dac_test.pdf dac_test.md
```


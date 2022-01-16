# CS 427 Pandoc container

Ubuntu's version of [Pandoc](https://pandoc.org) is old and doesn't like the provided macros file (among other things).

This Docker container provides Arch's Pandoc + TeXLive, which works fine.

## Usage:

```bash
docker run --rm -v $(pwd):/data -u $(id -u):$(id -g) detjensrobert/crypto-md2pdf file.md -o file.pdf
```

No need to include the macros in `header-includes` in your markdown, the container will do that for you.

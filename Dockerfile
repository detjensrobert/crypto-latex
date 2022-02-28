FROM detjensrobert/arch-pandoc

COPY macros.tex /
COPY macros.yml /

WORKDIR /data
ENTRYPOINT ["pandoc", "--variable=geometry:margin=1in", "--highlight=tango", "--citeproc", "--metadata-file=/macros.yml", "-s"]

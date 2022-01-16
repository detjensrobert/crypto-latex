FROM archlinux:latest

COPY pacman.conf.build /etc/pacman.conf.build
RUN pacman --config=/etc/pacman.conf.build -Sy --noconfirm texlive-most
RUN pacman --config=/etc/pacman.conf.build -Sy --noconfirm pandoc

COPY macros.tex /
COPY macros.yml /

WORKDIR /data
ENTRYPOINT ["/usr/bin/pandoc", "--variable=geometry:margin=1in", "--highlight=tango", "--citeproc", "--metadata-file=/macros.yml", "-s"]

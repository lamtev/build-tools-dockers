FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

RUN apt update && DEBIAN_FRONTEND=noninteractive TZ=Europe/Moscow apt install -y \
		ghostscript \
		texlive-latex-extra \
		texlive-xetex \
		texlive-lang-cyrillic \
		&& rm -rf /var/lib/apt/lists/*

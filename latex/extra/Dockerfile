FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

RUN apt update && DEBIAN_FRONTEND=noninteractive TZ=Europe/Moscow apt install -y \
		ghostscript \
		texlive-lang-cyrillic \
		texlive-latex-extra \
	&& rm -rf /var/lib/apt/lists/*

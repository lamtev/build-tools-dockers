FROM ubuntu:latest

MAINTAINER Anton Lamtev <antonlamtev@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
		ghostscript \
		texlive-lang-cyrillic \
		texlive-latex-extra \
	&& rm -rf /var/lib/apt/lists/*

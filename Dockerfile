FROM ubuntu:latest

RUN apt update -y
RUN apt install -y cmake
RUN apt install -y g++
RUN apt install -y cloc
RUN apt install -y cppcheck
RUN apt install -y valgrind
RUN apt install -y lcov curl
RUN apt install -y software-properties-common
RUN apt-add-repository -y ppa:beineri/opt-qt561-xenial
RUN apt update -y
RUN apt install -y qt56base qt56declarative qt56tools qt56translations

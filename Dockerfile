FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.6

RUN gem install file_discard --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["discard"]
CMD ["--help"]

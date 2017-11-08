FROM alpine:latest

MAINTAINER Luis Alexandre Deschamps Brandão <techmago@ymail.com>

ENV SYSTEM_PACKAGES="bash vim" \
    DATABASE_PACKAGES="sqlite-dev postgresql-dev mysql-dev" \
    BUILD_PACKAGES="curl-dev ruby-dev build-base" \
    DEV_PACKAGES="zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev libffi-dev" \
    RUBY_PACKAGES="ruby ruby-io-console ruby-json yaml nodejs" \
    RAILS_VERSION="5.1.4"

RUN \
  apk --update --upgrade add $SYSTEM_PACKAGES $BUILD_PACKAGES $RUBY_PACKAGES $DEV_PACKAGES && \
  gem install -N bundler

RUN \
  echo 'gem: --no-document' >> ~/.gemrc && \
  cp ~/.gemrc /etc/gemrc && \
  chmod uog+r /etc/gemrc && \
  gem install -N puma  && \
  gem install -N rails --version "$RAILS_VERSION"

  # cleanup and settings
RUN \
  find / -type f -iname \*.apk-new -delete && \
  rm -rf /var/cache/apk/* && \
  rm -rf /usr/lib/lib/ruby/gems/*/cache/* && \
  rm -rf ~/.gem

EXPOSE 3000

ENTRYPOINT ["tail", "-f", "/dev/null"]

FROM ruby:2.5.1

ARG user
ARG uid

RUN test -n "$user"
RUN test -n "$uid"

ENV BUILD_DEPS="build-essential"
ENV RAILS_GEM_DEPS="tzdata less"
ENV UGLIFIER_GEM_DEPS="nodejs"
ENV DOCKER_DEPS="wait-for-it"
ENV LC_ALL C.UTF-8

RUN apt-get update && apt-get install -y \
$BUILD_DEPS \
$RAILS_GEM_DEPS \
$UGLIFIER_GEM_DEPS \
$DOCKER_DEPS \
&& rm -rf /var/lib/apt/lists/*

RUN adduser --gecos "$user" --uid "$uid" --disabled-login "$user"

WORKDIR "/home/$user/projeto_ufabc"

ADD Gemfile .
ADD Gemfile.lock .

RUN chown $user Gemfile Gemfile.lock

USER "$user"

RUN bundle install --clean --jobs=$(nproc)

ENTRYPOINT ["wait-for-it", "db:5432", "--"]

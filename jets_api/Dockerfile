FROM ruby:2.7.5

WORKDIR /usr/src/app

# For Node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt-get update && \
    apt-get install -y \
      mariadb-client \
      nodejs \
      build-essential \
      vim \
      zip \
      unzip \
      rsync \
      --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
ENV PATH="/root/.yarn/bin:$PATH"
ENV LANG=ja_JP.UTF-8

ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app/
RUN bundle install --system

ADD . /usr/src/app

RUN jets webpacker:install

EXPOSE 8888
CMD bin/start_server.sh
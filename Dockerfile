FROM golang:1.15

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list && \
  apt update && apt install -y python3 python3-pip git curl jq nodejs yarn && \
  pip3 install poetry

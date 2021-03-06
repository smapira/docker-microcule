FROM tensorflow/tensorflow:latest-gpu

# update apt-get
RUN apt-get update && apt-get -y upgrade

# install nodejs python3 build-essential
RUN apt-get install -y curl sudo bash
RUN curl -SL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs python git openssl make build-essential gcc ca-certificates build-essential \
    binutils debootstrap libcupti-dev python3-pip python3-dev python-virtualenv apt-utils ocaml opam mlocate \
    ruby m4 vim
RUN apt-get update --fix-missing && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && apt-get autoremove -y \
  && ln -s /usr/bin/nodejs /usr/local/bin/node

# install mon
RUN cd /tmp; git clone https://github.com/tj/mon; cd mon; make install

# install rust
RUN curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly
RUN opam init && opam install -y utop

# install tensorflow
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade tensorflow
RUN pip3 install --upgrade tensorflow-gpu

RUN mkdir -p /src/tensorflow && cd /src/tensorflow && git clone https://github.com/tensorflow/models.git

# install yarn
RUN npm install -g yarn


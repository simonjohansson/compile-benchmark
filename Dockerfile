FROM ubuntu

RUN mkdir /opt/src
RUN apt-get -y update && apt-get -y install wget xz-utils python autoconf2.13 build-essential ccache nodejs python-dev python-pip python-setuptools unzip uuid zip libasound2-dev libcurl4-openssl-dev libdbus-1-dev libdbus-glib-1-dev libgconf2-dev libgtk-3-dev libgtk2.0-dev libpulse-dev libx11-xcb-dev libxt-dev python-dbus xvfb yasm build-essential gcc libssl-dev bc libelf-dev clang-4.0
RUN pip install Mercurial

WORKDIR /opt/src

RUN wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.15.tar.xz
RUN tar -xf linux-4.15.tar.xz

RUN wget https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py
RUN echo 1 | python bootstrap.py --no-interactive
RUN wget https://archive.mozilla.org/pub/firefox/releases/58.0/source/firefox-58.0.source.tar.xz
RUN tar -xf firefox-58.0.source.tar.xz

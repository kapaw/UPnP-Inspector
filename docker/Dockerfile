FROM ubuntu:xenial

# Basic upnp-inspector deps
RUN apt-get update && \
apt-get install -y sudo python python-pip git python-gtk2-dev

# Switch to user
RUN useradd -m user -p user && echo "user:user" | chpasswd && adduser user sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER user
WORKDIR /home/user/

# Install coherence
RUN git clone https://github.com/coherence-project/Coherence.git coherence
RUN cd coherence && sudo python setup.py install

# Install upnp-inspector. Remove coherence and pygtk from setup.py
RUN git clone https://github.com/kapaw/UPnP-Inspector.git upnp-inspector
RUN cd upnp-inspector && \
  sed -i "s/'Coherence[^,]*.//" setup.py && \
  sed -i "s/'pygtk[^,].//" setup.py && \
  sudo python setup.py install

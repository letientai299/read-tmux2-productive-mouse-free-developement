FROM ubuntu

# Update and install some basic tools to learn tmux
RUN apt-get update && apt-get install -y vim tmux git

# Clone the tpm repo
RUN git clone https://github.com/tmux-plugins/tpm /root/.tmux/plugins/tpm

# Copy the basic tmux config
COPY tmux.conf /root/.tmux.conf

# Install other tmux plugins
RUN tmux new-session -s base -d \
  && tmux source /root/.tmux.conf \
  && tmux run /root/.tmux/plugins/tpm/bin/install_plugins

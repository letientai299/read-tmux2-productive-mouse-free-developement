Reading **Tmux2 Productive mouse free development**
===================================================

Book link: https://pragprog.com/book/bhtmux2/tmux-2

Below is what contained in this repo

Basic ubuntu with tmux
----------------------

The `Dockerfile` to build a basic env for learning tmux. My dotfiles is heavy
customized, and I don't fully understand tmux with those customization. Thus,
I created that image with the minimum config for tmux and start learning with
it.

I start from `ubuntu:latest`, and install git, tmux, vim. Then, I install
[tmux-plugin-manager](https://github.com/tmux-plugins/tpm) and install some must
have tmux plugins:

- [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)
- [tmux-pain-control](https://github.com/tmux-plugins/tmux-pain-control)

Of cource, I didn't start with this image from the beginning. I started with
vagrant ubuntu box, which is very same with my working machine, but it is very
slow for each startup. Then I switch back to docker for faster startup time, but
I had to install everything for every throwaway containers, very tedious.

Side note
---------

### Docker

Start the docker image with a specified name, i.e. `ubuntu-tmux`, then use
`docker start -i ubuntu-tmux` to resume to the container if we accidentally
exit/stop it.

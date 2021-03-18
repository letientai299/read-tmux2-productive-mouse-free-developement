# Reading **Tmux2 Productive mouse free development**

Book link: https://pragprog.com/book/bhtmux2/tmux-2

Below is what contained in this repo

## Basic ubuntu with tmux

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

Start the docker image with a specified name, i.e. `ubuntu-tmux`, then use
`docker start -i ubuntu-tmux` to resume to the container if we accidentally
exit/stop it.

## Note

- [x] Acknowledgments
- [x] Preface
  - [x] What Is tmux?
  - [x] Who Should Read This Book
  - [x] What’s in This Book
  - [x] Changes in the Second Edition
  - [x] What You Need
  - [x] Conventions
  - [x] Online Resources
- [x] 1. Learning the Basics
  - [x] Installing tmux
    - Easy
  - [x] Starting tmux
    - Easy
  - [x] The Command Prefix
    - Too easy. But, I've noticed that my current tmux config has disable
      shortcut for `clock-mode`. `prefix-t` gave me nothing. - I'm using a
      ubuntu docker image to learn the basic tmux.
  - [x] Detaching and Attaching Sessions
  - [x] Working with Windows
    - Just learn about `prefix-w` and `prefix-f`
  - [x] Working with Panes
  - [x] Working with Command Mode
  - [x] What’s Next?
  - [x] For Future Reference
    - This kind of seection is a nice enhancement from 1st edition
- [x] 2. Configuring tmux
  - [x] Introducing the .tmux.conf File
  - [x] Customizing Keys, Commands, and User Input
  - [x] Visual Styling
  - [x] Customizing the Status Line’s Content
  - [x] What’s Next?
  - [x] For Future Reference
    - Most of the remapped keys are already covered in my tmux plugins.
- [x] 3. Scripting Customized tmux Environments
  - [x] Creating a Custom Setup with tmux Commands
  - [x] Using tmux Configuration for Setup
  - [x] Managing Configuration with tmuxinator
    - I've already known tmuxinator before.
  - [x] What’s Next?
  - [x] For Future Reference
  - Not much new things from this chapter. But it's nice to know how tmuxinator
    might be implemented under the hood.
- [x] 4. Working With Text and Buffers
  - [x] Scrolling Through Output with Copy Mode
  - [x] Copying and Pasting Text
    - The copy cat plugin helps me copy via `y` key just like vim.
  - [x] Working with the Clipboard on Linux
    - OMG, the buffers related commands in tmux is insane.
  - [x] Using OS X Clipboard Commands
  - [x] What’s Next?
  - [x] For Future Reference
    - Those sessions are really good for references
- [x] 5. Pair Programming with tmux
  - [x] Pairing with a Shared Account
  - [x] Using a Shared Account and Grouped Sessions
    - Grouped sessions is very nice. So, multiple users could share the same
      _target session_ while working on different windows as the same time.
    - That's why tmux has both `-s` and `-t` flags. For a while, I don't really
      understand them, as I usually work alone on my own tmux sessions.
  - [x] Quickly Pairing with tmate
    - Try tmate before, but I don't have practical usage reason for it yet,
      hence, just poke around.
  - [x] Pairing with Separate Accounts and Sockets
    - Nice feature.
  - [x] What’s Next?
  - [x] For Future Reference
- [x] 6. Workflows
  - [x] Working Effectively with Panes and Windows
  - [x] Managing Sessions
    - I think I found an error in the session "Moving Between Sessions". The
      shortcut to expand the windows tree (after pressing `prefix-s`) is `+`,
      not `SPACE`.
    - The actual command behind `prefix-s` and `prefix-w` is `choose-tree`. Very
      nice.
  - [x] tmux and Your Operating System
  - [x] Extending tmux with Plugins
  - [x] What’s Next?
  - [x] For Future Reference
- [x] A1. Our Configuration

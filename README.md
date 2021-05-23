# My personal dotfiles

It contains the installation of some basic tools, some handy aliases and functions.

## Instructions

### macOS

1. Go to the App Store, install Xcode, open it and accept the terms;
1. Open Safari and download Google Chrome, open it, login into your account and go to Github; Use the tutorial to [Generate a new SSH key and add it to the ssh-agent](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent); after that, [Test your SSH connection](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/testing-your-ssh-connection);
1. Clone the repository in your home directory and run the startup script using the command below;
```sh
cd ~
git clone --recurse-submodules git@github.com:claudsonm/dotfiles.git .dotfiles
cd .dotfiles
./bootstrap
```

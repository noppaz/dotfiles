#!/bin/zsh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Sites

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Symlink git config file
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# Add Golang folders
mkdir $HOME/go
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint

# Add Docker Desktop ZSH completion
docker_etc=/Applications/Docker.app/Contents/Resources/etc
ln -s $docker_etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
ln -s $docker_etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
ln -s $docker_etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose

# Set macOS preferences - reloads shell
source .macos

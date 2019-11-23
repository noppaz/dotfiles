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

# Symlink git config files
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitignore_global $HOME/.gitignore_global

# Disable conda base environment default activation
/usr/local/anaconda3/bin/conda config --set auto_activate_base False

# Add Golang folders
mkdir $HOME/go
go get golang.org/x/tools/cmd/godoc
go get github.com/golang/lint/golint

# Set macOS preferences - reloads shell
source .macos

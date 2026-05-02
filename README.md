# Noah's Dotfiles

Dotfiles for macOS. Mainly based on [Dries Vints](https://github.com/driesvints/dotfiles). Find more dotfiles inspiration at https://dotfiles.github.io/.

### Setting up your Mac

1. Update macOS to the latest version
1. Install macOS Command Line Tools by running `xcode-select --install`
1. Install Homebrew + 1Password and configure the SSH agent:
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
   eval "$(/opt/homebrew/bin/brew shellenv)" && \
   brew install --cask 1password && \
   mkdir -p ~/.ssh && \
   cat >> ~/.ssh/config << 'EOF'
   Host *
     IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
   EOF
   ```
1. Open 1Password, sign in, and enable the SSH agent: **Settings → Developer → Use the SSH agent**
1. Clone this repo: `git clone git@github.com:noppaz/dotfiles.git ~/.dotfiles`
1. Run `~/.dotfiles/install`
1. Restart your computer to finalize the process

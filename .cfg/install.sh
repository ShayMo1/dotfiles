# install oh-my-zsh
if [ -d ~/.oh-my-zsh ]; then
  echo "oh-my-zsh is Installed"
else
  echo "Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# install homebrew
if [[ $(command -v brew) == "" ]]; then
  echo "Installing Homebrew"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Updating Homebrew"
  brew update
fi

# install apps
brew bundle install

# install asdf plugins
asdf plugin add direnv
asdf plugin add nodejs
asdf plugin add python
asdf plugin add ruby
# install global versions
asdf install

# TODO
# Automate pointing iterm to the config in this repo
# Automate registering licenses for paid apps on fresh installs

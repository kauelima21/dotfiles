#!/bin/zsh

if command -v brew &> /dev/null; then
    echo "Homebrew founded."
    packages=("zsh-autosuggestions", "exa")
    for package in "${packages[@]}"; do
        if brew list -1 | grep -q "^$package$"; then
            echo "$package founded."
        else
            echo "$package not founded. Installing..."
            brew install $package
        fi
    done
else
    echo "Homebrew not founded. Please, install it first."
fi

if [ -f "/usr/local/bin/starship" ]; then
    echo "Starship founded."
else
    echo "Installing Starship"
    curl -sS https://starship.rs/install.sh | sh
fi

if [ -d "$HOME/.asdf" ]; then
    echo "ASDF founded."
else
    echo "Installing ASDF..."
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.13.1
    echo "Adding Node, Golang, Rust, Ruby, Crystal and Python plugins. This can take a while"
    asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
    asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
    asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
    asdf plugin-add crystal https://github.com/asdf-community/asdf-crystal.git
    asdf plugin-add python
fi

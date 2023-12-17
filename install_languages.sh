if [ -d "$HOME/.asdf" ]; then
  echo "ASDF founded."
  echo "Installing Node, Python, Golang, Rust, Ruby and Crystal languages."
  asdf install nodejs 18.18.0
  asdf install golang 1.21.5
  asdf install ruby 3.2.2
  asdf install rust 1.74.1
  asdf install crystal 1.10.1
  asdf install python 3.8.7
else
  echo "ASDF not founded. Please, install it first."
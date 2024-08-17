# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

which stow || echo "STOW IS NOT INSTALLED" && sleep 4 && exit 1

# Link new dotfiles
stow -t ~ *

# Install brew programs from list
xargs brew install < brew_programs_list.txt

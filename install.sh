unlink ~/.zshrc
unlink ~/.config
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
xargs brew install < brew_programs_list.txt


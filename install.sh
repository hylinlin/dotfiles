echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.zshrc
rm ~/.vim
rm ~/.gitconfig
rm ~/.tmux.conf

echo "Symlinking files"
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."

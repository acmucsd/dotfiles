mv ~/.bashrc ~/.bashrc.old
mv ~/.bash_aliases ~/.bash_aliases.old
mv ~/.vimrc ~/.vimrc.old
mv ~/.gitconfig ~/.gitconfig.old

cp ./.bashrc ~/.bashrc
cp ./.bash_aliases ~/.bash_aliases
cp ./.vimrc ~/.vimrc
cp ./.gitconfig ~/.gitconfig

echo "Installation complete!"

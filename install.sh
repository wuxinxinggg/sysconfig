#/bin/sh

#check whether the user is root
if [ `id -u` -ne 0 ];then
    echo "Please run the script as root"
    echo "eg: \"sudo $0\""
    exit 1
fi

#install build-essential
echo "install build-essential"
sudo apt-get install build-essential

#install vim
echo "install vim"
sudo apt-get install vim

#install git 
echo "install git"
sudo apt-get install git git-core

#install guake terminal
echo "install guake terminal"
sudo apt-get install guake

#install tig
echo "install tig"
sudo apt-get install tig

#install ctags
echo "install ctags"
sudo apt-get install ctags

#install ag
sudo apt-get install -y automake pkg-config libpcre3-dev zlib1g-dev liblzma-dev
git clone  https://github.com/ggreer/the_silver_searcher.git $HOME/ag
cd $HOME/ag && ./build.sh && sudo make install

#set dircolors
echo "setting dircolors" 
ln -s $HOME/sysconfig/.bash_aliases $HOME/.bash_aliases

#set guake theme as solarize
echo "setting guake theme as solarize"
sh /home/pydog/sysconfig/guake-colors-solarized/set_dark.sh solarized

#set vim
echo "setting vim config"
git clone git@github.com:wuxinxinggg/pydog_vimconfig.git $HOME/.vim
ln -s $HOME/.vim/.vimrc $HOME/.vimrc

echo "downloadding goagent"
git clone git@github.com:wuxinxinggg/goagent.git

echo "setting git"
ln -s $HOME/sysconfig/.gitconfig $HOME/.gitconfig

echo "Setting tmux"
cat $HOME/sysconfig/tmuxcolors-dark.conf >$HOME/.tmux.conf

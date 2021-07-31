#/bin/bash

figlet "kopiowanie"

all="10"

# bspwm
mkdir -p bspwm
cd bspwm
cp -r $HOME/.config/bspwm/* . && echo "skopiowano pliki bspwm		[1/$all]"

cd ..

# luastatus (i3 and bspwm)
mkdir -p luastatus
cd luastatus
cp -r $HOME/.config/luastatus/* . && echo "skopiowano pliki luastatus	[2/$all]"

cd ..

# Xresources
mkdir -p Xresources
cd Xresources
cp -r $HOME/.Xresources . && echo "skopiowano .Xresources		[3/$all]"

cd ..

# nvim

mkdir -p nvim
cd nvim
cp -r $HOME/.config/nvim/init.vim . && echo "skopiowano pliki nvim		[4/$all]"

cd ..

# vim

mkdir -p vim
cd vim
cp -r $HOME/.vimrc . && echo "skopiowano pliki vima		[5/$all]"

cd ..

# i3

mkdir -p i3
cd i3
cp -r $HOME/.config/i3/* . && echo "skopiowano pliki i3		[6/$all]"

cd ..

# sxhkd

mkdir -p sxhkd
cd sxhkd
cp -r $HOME/.config/sxhkd/* . && echo "skopiowano pliki sxhkd		[7/$all]"

cd ..

# bashrc

mkdir -p bashrc
cd bashrc
cp -r $HOME/.bashrc . && echo "skopiowano .bashrc		[8/$all]"

cd ..

# inputrc

mkdir  -p inputrc 
cd inputrc
cp -r $HOME/.inputrc . && echo "skopiowano .inputrc		[9/$all]"

cd ..

# .tmux.conf

mkdir -p tmux
cd tmux
cp -r $HOME/.tmux.conf . && echo "skopiowano .tmuxmconf		[10/$all]"

cd ..



git add --all
git commit -m 'another one!'

onefetch

#/bin/bash

figlet "kopiowanie"

all="11"

# bspwm
mkdir -p bspwm
rm bspwm/*
cd bspwm
cp -r $HOME/.config/bspwm/* . && echo "skopiowano pliki bspwm		[1/$all]"

cd ..

# luastatus (i3 and bspwm)
mkdir -p luastatus
rm luastatus/*
cd luastatus
cp -r $HOME/.config/luastatus/* . && echo "skopiowano pliki luastatus	[2/$all]"

cd ..

# Xresources
mkdir -p Xresources
rm Xresources/*
cd Xresources
cp -r $HOME/.Xresources . && echo "skopiowano .Xresources		[3/$all]"

cd ..

# nvim

mkdir -p nvim
rm nvim/*
cd nvim
cp -r $HOME/.config/nvim/init.vim . && echo "skopiowano pliki nvim		[4/$all]"

cd ..

# vim

mkdir -p vim
rm vim/*
cd vim
cp -r $HOME/.vimrc . && echo "skopiowano pliki vima		[5/$all]"

cd ..

# i3

mkdir -p i3
rm i3/*
cd i3
cp -r $HOME/.config/i3/* . && echo "skopiowano pliki i3		[6/$all]"

cd ..

# sxhkd

mkdir -p sxhkd
rm sxhkd/*
cd sxhkd
cp -r $HOME/.config/sxhkd/* . && echo "skopiowano pliki sxhkd		[7/$all]"

cd ..

# bashrc

mkdir -p bashrc
rm bashrc/*
cd bashrc
cp -r $HOME/.bashrc . && echo "skopiowano .bashrc		[8/$all]"

cd ..

# inputrc

mkdir  -p inputrc 
rm inputrc/*
cd inputrc
cp -r $HOME/.inputrc . && echo "skopiowano .inputrc		[9/$all]"

cd ..

# .tmux.conf

mkdir -p tmux
rm tmux/*
cd tmux
cp -r $HOME/.tmux.conf . && echo "skopiowano .tmuxmconf		[10/$all]"

cd ..

# scripts

mkdir -p scripts
rm scripts/*
cd scripts
cp -r $HOME/scripts/* . && echo "skopiowano scripts		[11/$all]"

cd ..

# picom

mkdir -p picom
rm picom/*
cd picom
cp -r $HOME/.config/picom/picom.conf . && echo "skopiowano picom.conf		[12/$all]"

cd ..



git add --all
git commit -m 'another one!'

onefetch

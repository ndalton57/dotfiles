rm -rf ~/.config/btop/*
ln ./btop/* ~/.config/btop/

rm -rf ~/.config/hypr/*
ln ./hypr/* ~/.config/hypr/

rm -rf ~/.config/kitty/*
ln ./kitty/* ~/.config/kitty/

rm -rf ~/.config/ranger/*
ln ./ranger/* ~/.config/ranger/

rm -rf ~/.config/waybar/*
ln ./waybar/* ~/.config/waybar/

rm -rf ~/.config/wofi/*
ln ./wofi/* ~/.config/wofi/

rm ~/.bashrc
rm ~/.bash_logout
rm ~/.profile
ln ./bash/.bashrc ~/
ln ./bash/.bash_logout ~/
ln ./bash/.profile ~/

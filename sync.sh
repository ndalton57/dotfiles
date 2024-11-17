rm -rf ./btop/*
ln ~/.config/btop/*.conf ./btop/

rm -rf ./hypr/*
ln ~/.config/hypr/* ./hypr/

rm -rf ./kitty/*
ln ~/.config/kitty/* ./kitty/

rm -rf ./waybar/*
ln ~/.config/waybar/* ./waybar/

rm -rf ./wofi/*
ln ~/.config/wofi/* ./wofi/

rm -rf ./bash/* ./bash/.* 2>/dev/null
ln ~/.bashrc ./bash/
ln ~/.bash_logout ./bash/
ln ~/.profile ./bash/

rm -rf ./nvim/*.*
ln ~/.config/nvim/*.* ./nvim/

rm -rf ./nvim/lua/config/*
ln ~/.config/nvim/lua/config/* ./nvim/lua/config/

rm -rf ./nvim/lua/plugins/*
ln ~/.config/nvim/lua/plugins/* ./nvim/lua/plugins/

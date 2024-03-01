echo "Install Plasma desktop and SDDM"
sleep 2
sudo pacman -S --noconfirm plasma plasma-wayland-session sddm
echo "BASIC DONE"
sleep 2 
sudo systemctl enable sddm.service
sleep 2 
echo "enabling bluetooth"
sudo systemctl enable bluetooth.service
sleep 5
echo "installing apps"
yay -S --noconfirm google-chrome kwin-bismuth kitty spectacle neofetch dolphin vesktop-bin steam btop onedrivegui visual-studio-code-bin mpv spotify-launcher youtube-music-bin ark intel-media-driver jp2a fcitx5 fcitx5-qt fcitx5-gtk fcitx5-bamboo fcitx5-mozc fcitx5-configtool powertop winegui-bin github-cli fish libreoffice-fresh
echo "Installation completed."
sleep 2
cp -r /home/$USER/bocchitheme/.config/* /home/$USER/.config/
cp -r /home/$USER/bocchitheme/.local/* /home/$USER/.local/
sudo systemctl start sddm.service

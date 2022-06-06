# Uncomment next line if in China
# sudo pacman-mirrors -i -c China -m rank

# Update system
sudo pacman -Syyu

# Uncomment if in China
# echo '[archlinuxcn]
# Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch' | sudo tee -a /etc/pacman.conf

# Install yay
sudo pacman -S yay

# install keychain service for vscode
yay -S qtkeychain gnome-keyring 

# Install packages
yay -S google-chrome visual-studio-code-bin fcitx5-im fcitx5-chinese-addons fcitx5-anthy
sudo touch /etc/environment
echo 'GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
INPUT_METHOD=fcitx
SDL_IM_MODULE=fcitx
GLFW_IM_MODULE=ibus' | sudo tee -a /etc/environment

# Change to local-rtc for Manjaro-Windows dual system
timedatectl set-local-rtc 1 --adjust-system-clock

# Generate SSH key
ssh-keygen -t ed25519 -C "manjaro-init"
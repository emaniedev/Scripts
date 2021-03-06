## Pacstrap needs
* base
* base-devel
* linux
* linux-firmware
* vim
* firefox
* man-db
* man-pages
* infotext
```
pacstrap /mnt base base-devel linux linux-firmware vim firefox man-db man-pages infotext
```
## Utils post installation
* xf86-video-amdgpu 
* nitrogen
* picom
* alacritty
* dmenu
```
pacman -S git xf86-video-amdgpu nitrogen dmenu picom alacritty 
```
## Enable AUR
```
git clone https://aur.archlinux.ort/yay-git.git
cd yay-git.git
makepkg -si
```

## i3
```
pacman -S i3
```
Instalar todo menos i3-wm


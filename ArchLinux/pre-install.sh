
loadkeys es

parted /dev/x mkpart root/primary ext4 0GB 20GB
parted /dev/x mkpart swap/primary linux-swap 0GB 2GB
parted /dev/x mkpart home/primary ext4 0GB 100%

mkfs.ext4 /dev/xroot
mkfs.ext4 /dev/xhome
mkswap /dev/xswap

mkdir /mnt/home

mount /dev/xroot /mnt
mount /dev/xhome /mnt/home
swapon /dev/xswap

pacstrap /mnt base base-devel linux linux-firmware vim firefox man-db man-pages infotext

genfstab -U /mnt >> /mnt/etc/fstab

arch-root /mnt

ln -sF /usr/share/zoneinfo/Europa/Madrid /etc/localtime
hwclock --systohc

pacman -S grub

mkdir /boot/EFI/GRUB
grub-install --target=X86_64-efi --efi-directory=/boot --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg

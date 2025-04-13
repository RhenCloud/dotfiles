CreateDir /Data
CopyFile /etc/NetworkManager/system-connections/AndroidAP.nmconnection 600
CopyFile /etc/NetworkManager/system-connections/CMCC-TuJM-5G.nmconnection 600
CopyFile /etc/NetworkManager/system-connections/CMCC-TuJM.nmconnection 600
CopyFile /etc/NetworkManager/system-connections/WIN-A0QC78TBVVA\ 5512.nmconnection 600
CopyFile /etc/NetworkManager/system-connections/sakura.nmconnection 600
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf
CopyFile /etc/brlapi.key 640 '' brlapi
CreateDir /etc/cni/net.d 700
CopyFile /etc/create_ap.conf
CopyFile /etc/daed/wing.db 640
CopyFile /etc/default/grub
CopyFile /etc/environment
CopyFile /etc/hostname
CopyFile /etc/hosts
CopyFile /etc/keyd/default.conf
CopyFile /etc/locale.conf
CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/Asia/Shanghai
CopyFile /etc/machine-id 444
CopyFile /etc/makepkg.conf
CopyFile /etc/mkinitcpio.conf
CopyFile /etc/mkinitcpio.d/linux-zen.preset
CopyFile /etc/modprobe.d/nvidia.conf
CopyFile /etc/modules-load.d/ddcutil.conf
CopyFile /etc/mpd.conf
CopyFile /etc/orayconfig.conf
CopyFile /etc/pacman.conf
CopyFile /etc/pacman.d/mirrorlist
CopyFile /etc/plymouth/plymouthd.conf
CopyFile /etc/proxychains.conf
CopyFile /etc/resolv.conf
CreateFile /etc/sddm.conf >/dev/null
CopyFile /etc/sddm.conf.d/kde_settings.conf
CopyFile /etc/sudoers
CopyFile /etc/sys_config.conf 640
CopyFile /etc/systemd/system/getty@tty1.service.d/override.conf
CopyFile /etc/systemd/zram-generator.conf
CopyFile /etc/udevmon.yaml
CopyFile /etc/vconsole.conf
CopyFile /etc/xdg/autostart/sunlogin.desktop
CreateLink /etc/xdg/menus/applications.menu /etc/xdg/menus/arch-applications.menu
CopyFile /etc/xml/catalog
CopyFile /home/sakura/.config/Typora/themes/drake/font.css
CopyFile /opt/QQ/resources/app/package.json
CopyFile /opt/clion/bin/clion64.vmoptions.pacsave
CreateDir /opt/containerd/bin 711
CreateDir /opt/containerd/lib 711
CreateDir /opt/vcpkg
CopyFile /usr/bin/electron-netease-cloud-music
CreateLink /usr/bin/hexo ../lib/node_modules/hexo-cli/bin/hexo
CopyFile /usr/lib/graphviz/config6
CreateLink /usr/lib/jvm/default java-23-openjdk
CreateLink /usr/lib/jvm/default-runtime java-23-openjdk
CopyFile /usr/lib/vlc/plugins/plugins.dat
CopyFile /usr/local/share/ca-certificates/reqable-root.crt
SetFileProperty /opt/containerd mode 711
SetFileProperty /usr/bin/groupmems group groups
SetFileProperty /usr/bin/groupmems mode 2750
SetFileProperty /usr/lib/utempter/utempter group utmp
SetFileProperty /usr/lib/utempter/utempter mode 2755

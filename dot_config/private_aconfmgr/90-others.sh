AddPackage ark                                     # Archiving Tool
AddPackage baloo-widgets                           # Widgets for Baloo
AddPackage cuda                                    # NVIDIA's GPU programming toolkit
AddPackage dart-sass                               # Sass makes CSS fun again
AddPackage dnsmasq                                 # Lightweight, easy to configure DNS forwarder and DHCP server
AddPackage edk2-ovmf                               # Firmware for Virtual Machines (x86_64, i686)
AddPackage enca                                    # Charset analyser and converter
AddPackage ffmpegthumbnailer                       # Lightweight video thumbnailer that can be used by file managers
AddPackage ffmpegthumbs                            # FFmpeg-based thumbnail creator for video files
AddPackage ffnvcodec-headers                       # FFmpeg version of headers required to interface with Nvidias codec APIs
AddPackage filelight                               # View disk usage information
AddPackage filezilla                               # Fast and reliable FTP, FTPS and SFTP client
AddPackage gnome-bluetooth-3.0                     # GNOME Bluetooth Subsystem
AddPackage gst-plugin-pipewire                     # Multimedia graph framework - pipewire plugin
AddPackage gvfs                                    # Virtual filesystem implementation for GIO
AddPackage helix                                   # A post-modern modal text editor
AddPackage imagemagick                             # An image viewing/manipulation program
AddPackage interception-caps2esc                   # Interception plugin that transforms the most useless key ever in the most useful one
AddPackage iwd                                     # Internet Wireless Daemon
AddPackage kate                                    # Advanced text editor
AddPackage kcachegrind                             # Visualization of Performance Profiling Data
AddPackage kdeconnect                              # Adds communication between KDE and your smartphone
AddPackage kdesdk-thumbnailers                     # Plugins for the thumbnailing system
AddPackage kimageformats                           # Image format plugins for Qt 6
AddPackage kio-admin                               # Manage files as administrator using the admin:// KIO protocol
AddPackage kmscon                                  # Terminal emulator based on Kernel Mode Setting (KMS)
AddPackage ksystemlog                              # System log viewer tool
AddPackage kwallet-pam                             # KWallet PAM integration
AddPackage kwin-scripts-krohnkite-git              # A dynamic tiling extension for KWin
AddPackage lib32-glib2                             # Low level core library - 32-bit
AddPackage lib32-nvidia-utils                      # NVIDIA drivers utilities (32-bit)
AddPackage lib32-vulkan-intel                      # Open-source Vulkan driver for Intel GPUs - 32-bit
AddPackage libpulse                                # A featureful, general-purpose sound server (client library)
AddPackage libreoffice-fresh                       # LibreOffice branch which contains new features and program enhancements
AddPackage libreoffice-fresh-zh-cn                 # Chinese (simplified) language pack for LibreOffice Fresh
AddPackage libvirt                                 # API for controlling virtualization engines (openvz,kvm,qemu,virtualbox,xen,etc)
AddPackage linux-firmware                          # Firmware files for Linux
AddPackage linux-wifi-hotspot                      # Feature-rich wifi hotspot creator
AddPackage lynx                                    # A text browser for the World Wide Web
AddPackage mediainfo                               # Supplies technical and tag information about media files (CLI interface)
AddPackage mousepad                                # Simple text editor for Xfce
AddPackage nmap                                    # Utility for network discovery and security auditing
AddPackage nvidia-settings                         # Tool for configuring the NVIDIA graphics driver
AddPackage nwg-look                                # GTK settings editor adapted to work on wlroots-based compositors
AddPackage orca                                    # Screen reader for individuals who are blind or visually impaired
AddPackage packagekit-qt6                          # Qt6 bindings for PackageKit
AddPackage parole                                  # Modern media player based on the GStreamer framework
AddPackage plasma-sdk                              # Applications useful for Plasma development
AddPackage plasma-settings                         # Settings application for Plasma Mobile
AddPackage plasma-workspace                        # KDE Plasma Workspace
AddPackage plasma6-wallpapers-dynamic              # Dynamic wallpaper plugin for KDE Plasma
AddPackage plasma6-wallpapers-wallpaper-engine-git # A simple kde wallpaper plugin integrating wallpaper engine
AddPackage power-profiles-daemon                   # Makes power profiles handling available over D-Bus
AddPackage proxychains-ng                          # A hook preloader that allows to redirect TCP traffic of existing dynamically linked programs through one or more SOCKS or HTTP proxies
AddPackage qemu-base                               # A basic QEMU setup for headless environments
AddPackage qemu-full                               # A full QEMU setup
AddPackage qt5ct                                   # Qt5 Configuration Utility
AddPackage qt6-webview                             # Provides a way to display web content in a QML application
AddPackage qt6ct                                   # Qt 6 Configuration Utility
AddPackage qtcreator                               # Lightweight, cross-platform integrated development environment
AddPackage rawtherapee                             # A powerful cross-platform raw image processing program
AddPackage ripgrep                                 # A search tool that combines the usability of ag with the raw speed of grep
AddPackage ristretto                               # A fast and lightweight picture viewer for Xfce
AddPackage screenkey                               # A screencast tool to display your keys inspired by Screenflick
AddPackage shotcut                                 # Cross-platform Qt based Video Editor
AddPackage sing-geoip-db                           # GeoIP Database for sing-box
AddPackage sing-geosite-db                         # Geosite Database for sing-box
AddPackage smartmontools                           # Control and monitor S.M.A.R.T. enabled ATA and SCSI Hard Drives
AddPackage spectacle                               # KDE screenshot capture utility
AddPackage sqlmap                                  # Automatic SQL injection and database takeover tool
AddPackage tcpdump                                 # Powerful command-line packet analyzer
AddPackage tmux                                    # Terminal multiplexer
AddPackage uwsm                                    # A standalone Wayland session manager
AddPackage valgrind                                # Tool to help find memory-management problems in programs
AddPackage vcpkg                                   # C++ library manager
AddPackage vulkan-intel                            # Open-source Vulkan driver for Intel GPUs
AddPackage wacomtablet                             # GUI for Wacom Linux drivers that supports different button/pen layout profiles
AddPackage webkit2gtk-4.1                          # Web content engine for GTK
AddPackage webkitgtk-6.0                           # Web content engine for GTK
AddPackage wev                                     # A tool for debugging wayland events on a Wayland window, analagous to the X11 tool xev
AddPackage wireless_tools                          # Tools allowing to manipulate the Wireless Extensions
AddPackage xdg-utils                               # Command line tools that assist applications with a variety of desktop integration tasks
AddPackage xfburn                                  # A simple CD/DVD burning tool based on libburnia libraries
AddPackage xorg-xinit                              # X.Org initialisation program
AddPackage --foreign bun-bin                       # All-in-one JavaScript runtime built for speed, with bundler, transpiler, test runner, and package manager. Includes bunx, shell completions and support for baseline CPUs
AddPackage --foreign keymapper-bin                 # A cross-platform context-aware keyremapper
AddPackage --foreign matugen-bin                   # A material you color generation tool with templates
AddPackage --foreign qt-heif-image-plugin          # Qt plugin for HEIF images
AddPackage --foreign raw-thumbnailer               # A lightweight and fast raw image thumbnailer that can be used by file managers.
AddPackage --foreign reqable-bin                   # A cross platform professional HTTP development and Debugger that supports HTTP1, HTTP2, and HTTP3 (QUIC) protocols.(Prebuilt version)

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

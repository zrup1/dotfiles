sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && sudo dnf install akmod-nvidia nvidia-vaapi-driver libva-utils vdpauinfo xorg-x11-drv-nvidia-cuda && sudo reboot
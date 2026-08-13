#!/usr/bin/env bash

set -euo pipefail

echo "Installing XDG Desktop Portal packages..."

sudo pacman -S --needed \
    xdg-desktop-portal \
    xdg-desktop-portal-gtk \
    xdg-desktop-portal-hyprland \
    pipewire \
    wireplumber \
    qt5-wayland \
    qt6-wayland

echo "Configuring GTK as the file picker..."

PORTAL_DIR="$HOME/.config/xdg-desktop-portal"
PORTAL_FILE="$PORTAL_DIR/hyprland-portals.conf"

mkdir -p "$PORTAL_DIR"

cat > "$PORTAL_FILE" <<'EOF'
[preferred]
default=hyprland;gtk
org.freedesktop.impl.portal.FileChooser=gtk
EOF

echo "Creating Hyprland environment configuration..."

ENV_DIR="$HOME/.config/environment.d"
ENV_FILE="$ENV_DIR/xdg-desktop-portal.conf"

mkdir -p "$ENV_DIR"

cat > "$ENV_FILE" <<'EOF'
XDG_CURRENT_DESKTOP=Hyprland
XDG_SESSION_DESKTOP=Hyprland
EOF

echo
echo "Portal setup complete."
echo
echo "GTK will handle file pickers."
echo "Hyprland will handle screenshots and screen sharing."
echo
echo "Log out and log back in for the environment changes to take effect."

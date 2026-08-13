#!/usr/bin/env bash

set -euo pipefail

echo "Installing KDE portal packages..."
sudo pacman -S --needed \
    xdg-desktop-portal \
    xdg-desktop-portal-kde

ENV_DIR="$HOME/.config/plasma-workspace/env"
ENV_FILE="$ENV_DIR/portal_vars.sh"

mkdir -p "$ENV_DIR"

cat > "$ENV_FILE" <<'EOF'
#!/usr/bin/env bash

export GTK_USE_PORTAL=1
export XDG_CURRENT_DESKTOP=KDE
EOF

chmod +x "$ENV_FILE"

echo "Setup complete."
echo "Please log out and log back in."

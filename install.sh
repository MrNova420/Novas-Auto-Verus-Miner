#!/data/data/com.termux/files/usr/bin/bash
# install.sh - Auto Verus Miner Setup for Termux

set -e

echo "[*] Starting Verus Miner Auto Setup..."

# Ensure required packages
echo "[*] Checking & installing required packages..."
pkg update -y && pkg upgrade -y
pkg install -y git wget curl unzip proot tar

# Set working directory
mkdir -p ~/verus-miner-termux/tools
cd ~/verus-miner-termux

# Clone miner repo if missing
if [ ! -d tools/verusminer ]; then
    echo "[*] Downloading Verus Miner..."
    git clone --depth 1 https://github.com/mvs-org/veruscoin.git tools/verusminer || {
        echo "[!] Auto-download failed. Running manual fallback..."
        bash manual_download.sh
    }
else
    echo "[✓] Verus Miner already downloaded."
fi

# Permissions
chmod +x tools/verusminer

# Setup complete
echo -e "\n[✓] Verus Miner setup complete!"
echo "Run with: ./tools/verusminer"

exit 0

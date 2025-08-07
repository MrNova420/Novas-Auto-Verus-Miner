#!/data/data/com.termux/files/usr/bin/bash

# Fallback manual downloader script for advanced Termux Verus miner
# Designed to only be used if auto-setup fails

echo -e "\e[33m[manual_download.sh] Manual Verus miner download starting...\e[0m"

# Ensure storage permission
termux-setup-storage

# Create base folders
mkdir -p ~/verus_manual
cd ~/verus_manual || exit 1

# Prompt user
read -p "Enter the direct download link for the Verus miner binary (Linux ARM): " URL

if [[ -z "$URL" ]]; then
  echo -e "\e[31m[ERROR] No URL provided. Exiting.\e[0m"
  exit 1
fi

echo -e "\e[34m[INFO] Downloading miner from:\e[0m $URL"

# Download with curl
curl -L --output verusminer.tar.gz "$URL"

# Extract
if [[ -f "verusminer.tar.gz" ]]; then
  echo -e "\e[32m[INFO] Extracting miner archive...\e[0m"
  tar -xvzf verusminer.tar.gz
  chmod +x verus*

  echo -e "\e[32m[✅ SUCCESS] Verus miner downloaded and extracted.\e[0m"
else
  echo -e "\e[31m[❌ ERROR] Download failed.\e[0m"
  exit 1
fi

echo -e "\e[34m[INFO] You can now run it manually with:\e[0m ./verus*"

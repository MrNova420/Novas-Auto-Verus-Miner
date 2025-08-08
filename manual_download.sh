#!/data/data/com.termux/files/usr/bin/bash

echo -e "\033[33m[manual_download.sh] Manual Verus miner download starting...\033[0m"

termux-setup-storage

mkdir -p ~/verus_manual
cd ~/verus_manual || exit 1

read -p "Enter the direct download link for the Verus miner binary (Linux ARM): " URL

if [[ -z "$URL" ]]; then
  echo -e "\033[31m[ERROR] No URL provided. Exiting.\033[0m"
  exit 1
fi

echo -e "\033[34m[INFO] Downloading miner from:\033[0m $URL"

curl -L --output verusminer.tar.gz "$URL"

if [[ -f "verusminer.tar.gz" ]]; then
  echo -e "\033[32m[INFO] Extracting miner archive...\033[0m"
  tar -xvzf verusminer.tar.gz
  chmod +x verus*

  echo -e "\033[32m[✅ SUCCESS] Verus miner downloaded and extracted.\033[0m"
else
  echo -e "\033[31m[❌ ERROR] Download failed.\033[0m"
  exit 1
fi

echo -e "\033[34m[INFO] You can now run it manually with:\033[0m ./verus*"

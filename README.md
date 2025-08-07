# Novas Auto Verus Miner For Termux
Note
  "Novas Auto Verus Miner /auto-verus-miner-termux -In Beta Since 8/7/2025                           - Project Started 8/7/2025 6:37 pm is a work in progress User Friendly Automated Advanced Verus Miner not just any Miner the Very Best for Termux!"

# The most advanced, fully automated Verus Miner setup for Termux.

## Features

- Automatic dependency installation and environment checks
- Secure wallet and mining pool setup with validation and saved config
- Dynamic CPU thread detection and miner performance tuning
- Clone, build, and update latest cpuminer-verus miner automatically
- User-friendly interactive menu and color-coded output
- Fully modular scripts for easy maintenance
- Logs and configs saved in dedicated folders

## Requirements

- Termux (latest version recommended)
- Internet connection

## Installation and Usage

1. Clone this repository:

```bash
git clone https://github.com/YOUR_USERNAME/auto-verus-miner-termux.git
cd auto-verus-miner-termux
chmod +x *.sh modules/*.sh utils/*.sh

2. Run the setup:
                  ./start.sh

3. After setup completes, start mining with:

./miner.sh

Updating Miner
To update the miner and scripts later, simply run:

Disclaimer
Mining cryptocurrencies can consume significant device resources and power.
Use Any Miner at your own risk. This project is provided as-is with no guarantees. but once either is in stable version or complete will add protections and or health and device monitrors


---

## . start.sh

```bash
#!/data/data/com.termux/files/usr/bin/bash
source utils/colors.sh

echo -e "${GREEN}Welcome to the Auto Verus Miner Termux Setup!${RESET}"

bash modules/checks.sh || { echo -e "${RED}System checks failed. Exiting.${RESET}"; exit 1; }
bash modules/wallet_setup.sh || { echo -e "${RED}Wallet setup failed. Exiting.${RESET}"; exit 1; }
bash modules/pool_setup.sh || { echo -e "${RED}Pool setup failed. Exiting.${RESET}"; exit 1; }
bash modules/performance.sh || { echo -e "${RED}Performance setup failed. Exiting.${RESET}"; exit 1; }
bash modules/miner_setup.sh || { echo -e "${RED}Miner setup failed. Exiting.${RESET}"; exit 1; }

echo -e "${GREEN}✅ Setup complete! You can now start mining with ./miner.sh${RESET}"


#!/data/data/com.termux/files/usr/bin/bash

source utils/colors.sh

echo -e "${GREEN}Welcome to Auto Verus Miner Termux Setup!${RESET}"

# Run system checks
bash modules/checks.sh || { echo -e "${RED}System checks failed. Exiting.${RESET}"; exit 1; }

# Wallet setup
bash modules/wallet_setup.sh || { echo -e "${RED}Wallet setup failed. Exiting.${RESET}"; exit 1; }

# Pool setup
bash modules/pool_setup.sh || { echo -e "${RED}Pool setup failed. Exiting.${RESET}"; exit 1; }

# Performance tuning
bash modules/performance.sh || { echo -e "${RED}Performance setup failed. Exiting.${RESET}"; exit 1; }

# Miner setup (build/download)
bash modules/miner_setup.sh || { echo -e "${RED}Miner setup failed. Exiting.${RESET}"; exit 1; }

echo -e "${GREEN}Setup complete! You can now start mining with ./miner.sh${RESET}"

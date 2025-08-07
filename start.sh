#!/data/data/com.termux/files/usr/bin/bash

# Load colors
source utils/colors.sh

# Welcome message
echo -e "${GREEN}Welcome to Auto Verus Miner Setup for Termux!${RESET}"

# Run system checks
bash modules/checks.sh

# Run wallet setup
bash modules/wallet_setup.sh

# Run pool setup
bash modules/pool_setup.sh

# Run performance tweaks
bash modules/performance.sh

# Run miner setup
bash modules/miner_setup.sh

# Finished
echo -e "${GREEN}All done! Verus miner setup complete.${RESET}"

#!/data/data/com.termux/files/usr/bin/bash

source utils/colors.sh

echo -e "${BLUE}Updating the repository and miner...${RESET}"

# Pull latest code
git pull origin main || { echo -e "${RED}Git pull failed.${RESET}"; exit 1; }

# Rebuild miner
bash modules/miner_setup.sh || { echo -e "${RED}Miner rebuild failed.${RESET}"; exit 1; }

echo -e "${GREEN}Update complete!${RESET}"


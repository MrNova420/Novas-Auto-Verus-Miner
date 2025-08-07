#!/data/data/com.termux/files/usr/bin/bash

# Load utilities
source utils/colors.sh

# Run checks
bash modules/checks.sh

# Setup wallet
bash modules/wallet_setup.sh

# Setup mining pool
bash modules/pool_setup.sh

# Configure performance
bash modules/performance.sh

# Setup miner
bash modules/miner_setup.sh

echo -e "${GREEN}✅ All setup complete!${RESET}"

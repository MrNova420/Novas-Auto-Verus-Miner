#!/data/data/com.termux/files/usr/bin/bash

source utils/colors.sh

CONFIG_FILE="config/user.conf"

if [ ! -f "$CONFIG_FILE" ]; then
  echo -e "${RED}Config file not found! Please run ./start.sh first.${RESET}"
  exit 1
fi

source "$CONFIG_FILE"

if [ -z "$WALLET" ] || [ -z "$POOL" ] || [ -z "$THREADS" ]; then
  echo -e "${RED}Wallet, pool, or threads not configured. Please run ./start.sh again.${RESET}"
  exit 1
fi

echo -e "${GREEN}Starting Verus miner...${RESET}"
echo -e "Wallet: ${YELLOW}$WALLET${RESET}"
echo -e "Pool: ${YELLOW}$POOL${RESET}"
echo -e "Threads: ${YELLOW}$THREADS${RESET}"

bin/verusminer -o "$POOL" -u "$WALLET" -p x -t "$THREADS"


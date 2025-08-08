#!/data/data/com.termux/files/usr/bin/bash

source ./utils.sh

log_info "Starting miner setup..."

# Ask user for wallet
read -p "Enter your Verus wallet address: " WALLET

if [[ -z "$WALLET" ]]; then
    log_error "No wallet provided. Exiting setup."
    exit 1
fi

log_success "Wallet set: $WALLET"

# Save the wallet for later
echo "$WALLET" > .wallet

log_info "Updating Termux packages..."
pkg update -y && pkg upgrade -y

log_info "Installing dependencies..."
pkg install -y git wget unzip clang make cmake

log_info "Cloning Verus miner repo..."
git clone https://github.com/monkins1010/ccminer.git verusminer

cd verusminer || { log_error "Failed to enter miner directory."; exit 1; }

log_info "Compiling miner (this may take a while)..."
make -j$(nproc)

log_success "Miner compiled successfully!"

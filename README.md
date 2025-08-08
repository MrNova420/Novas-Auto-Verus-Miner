# Novas Auto Verus Miner For Termux
Note
  "Novas Auto Verus Miner /auto-verus-miner-termux -In Beta Since 8/7/2025                           - Project Started 8/7/2025 6:37 pm is a work in progress User Friendly Automated Advanced Verus Miner not just any Miner the Very Best for Termux!"


#The most advanced, fully automated Verus Miner setup for Termux.

---

## Features

- One-command full setup: wallet, pool, miner, and performance config
- Automatic dependency installation and system checks
- Secure wallet and mining pool setup with input validation
- Smart CPU thread detection and miner optimization
- Clones & builds the latest high-performance cpuminer-verus
- Configs and logs saved persistently in `config/` and `logs/`
- User-friendly interactive prompts with color-coded feedback
- Auto-update and miner rebuild support

---

## Requirements

- Termux (latest version recommended)
- Android 7+ device
- Internet access

---

## Installation & Usage

1. Clone this repository:

```bash
pkg update && pkg install -y git
git clone https://github.com/YOUR_USERNAME/auto-verus-miner-termux.git
cd auto-verus-miner-termux
chmod +x *.sh modules/*.sh utils/*.sh

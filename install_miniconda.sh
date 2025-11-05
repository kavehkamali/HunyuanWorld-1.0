#!/bin/bash

# Fast Miniconda installation script for Ubuntu
# Run this as a non-root user with sudo access if needed for paths

set -e  # Exit on error

# Update system packages (optional but recommended)
sudo apt update && sudo apt upgrade -y

# Download the latest Miniconda installer
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

# Verify the download (optional: check SHA256 hash from official site)
# echo "Checking hash..." && sha256sum miniconda.sh | grep [expected_hash_here] || { echo "Hash mismatch!"; exit 1; }

# Install Miniconda non-interactively
bash miniconda.sh -b -p $HOME/miniconda3

# Initialize conda for the shell
$HOME/miniconda3/bin/conda init bash

# Clean up
rm miniconda.sh

source ~/.bashrc
conda --version"
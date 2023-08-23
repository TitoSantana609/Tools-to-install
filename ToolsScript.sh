#!/bin/bash

# Function to check if a command is available
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Function to install packages using apt-get (Debian/Ubuntu)
install_package() {
  if command_exists apt-get; then
    sudo apt-get update
    sudo apt-get install -y "$1"
  else
    echo "apt-get package manager not found. Please install Nmap, Dirb, Amass, ffuf, and wfuzz manually."
    exit 1
  fi
}

# Check and install Nmap
if ! command_exists nmap; then
  echo "Installing Nmap..."
  install_package nmap
else
  echo "Nmap is already installed."
fi

# Check and install Dirb
if ! command_exists dirb; then
  echo "Installing Dirb..."
  install_package dirb
else
  echo "Dirb is already installed."
fi

# Check and install Amass
if ! command_exists amass; then
  echo "Installing Amass..."
  install_package amass
else
  echo "Amass is already installed."
fi

# Check and install ffuf
if ! command_exists ffuf; then
  echo "Installing ffuf..."
  install_package ffuf
else
  echo "ffuf is already installed."
fi

# Check and install wfuzz
if ! command_exists wfuzz; then
  echo "Installing wfuzz..."
  install_package wfuzz
else
  echo "wfuzz is already installed."
fi

echo "Installation completed."

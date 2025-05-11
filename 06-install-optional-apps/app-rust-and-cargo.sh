#!/bin/bash

# Rust and cargo
curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path
source "$HOME/.cargo/env"
sudo apt install -y rustc cargo

#!/usr/bin/env bash
set -euo pipefail

# Install ripgrep
sudo apt-get update && sudo apt-get install ripgrep

# Install delta
wget -qO- https://github.com/dandavison/delta/releases/download/0.14.0/delta-0.14.0-aarch64-unknown-linux-gnu.tar.gz \
| sudo tar xvz -C /usr/local/bin --wildcards '*/delta' --strip-components 1

# Chezmoi should always be the last thing to run since it uses an exec at the end
source "$(dirname $0)/install-chezmoi.sh"

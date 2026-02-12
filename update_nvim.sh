#!/bin/bash
# Move to a temp folder
cd /tmp
# Download the latest stable AppImage
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage
# Make it executable
chmod u+x nvim-linux-x86_64.appimage
# Move it to your local bin
sudo mv nvim-linux-x86_64.appimage /usr/local/bin/nvim
echo "Neovim has been updated to the latest stable release!"

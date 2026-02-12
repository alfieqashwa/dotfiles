# Ensure nvm.fish gets loaded properly
if test -d ~/.local/share/nvm
    set -gx NVM_DIR ~/.local/share/nvm
end

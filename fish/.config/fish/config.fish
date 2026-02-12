# pyenv setup
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

# Initialize pyenv
if command -v pyenv >/dev/null
    pyenv init - | source
end

alias pn='pnpm'

# pnpm start
set -gx PNPM_HOME "/home/alfieqashwa/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


# if status is-interactive
#   cd $HOME/Code
# end

# GIT
alias g='git'
# alias gst='git status -sb'
alias gst='git status'
alias gci='git commit -m'
alias gca='git commit -am'
alias gco='git checkout'
alias gsw='git switch'
alias gpr='git pull -r'
alias gsh='git stash'
# alias gdiff='git diff --cached | git'
alias gdiff='git diff'
alias graph='git log --all --decorate --oneline --graph'
alias glo='git log'
alias gll='git log --oneline'
alias gls='git log --stat'
alias gb='git branch'
alias gm='git merge'
alias grt='git restore'
alias gf='git fetch'
alias gadd='git add'
alias gpush='git push'
alias gpull='git pull'
alias gfetch='git fetch'
alias greset='git reset --soft HEAD~1'
alias gconflict='git diff --name-only --diff-filter=U'
alias gclean='git clean -df' # clean all untracked directories and files
alias ggeturl='git remote get-url origin' # clean all untracked directories and files

# DOCKER
alias dstart='docker start'
alias dstop='docker stop'
alias dps='docker ps'

# CURSOR IDE
alias c='cursor'

starship init fish | source

# CARGO RUST
# n = "new"
alias cn='cargo new'
# cargo new --vcs=git
alias cn-git='cargo new --vcs=git'

# b = "build"
alias cb='cargo b'
# c = "check"
alias cc='cargo c'
# t = "test"
alias ct='cargo t'
# r = "run"
alias cr='cargo r'
# rr = "run --release"
alias crr='cargo rr'

# GOLANG
# sc: https://gist.github.com/pierre-b/8c3d2d1722f5d88533142a37ade9ecfc

set -g fish_user_paths /usr/local/go/bin $fish_user_paths
set -x GOPATH $HOME/Code/personal/GO
set -x PATH $PATH $GOPATH/bin

export FLYCTL_INSTALL="/home/alfieqashwa/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# untuk konfigursi private repo
# export GOPRIVATE="bitbucket.org/infradigitalnusantara"

# BUN
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# PYTHON
alias pyt='python'

# NEOVIM
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# SHORTCUTS
alias vi='nvim'
alias nvc='~/dotfiles/nvim/.config/nvim/ && nvim'
alias qc='~/Code/personal/PROJECT/qozycue && nvim'
alias wez='nvim ~/dotfiles/wezterm/.config/wezterm/wezterm.lua'
alias war='warp-terminal'
alias upnv='~/dotfiles/update_nvim.sh'

# FNM (Alternative NVM for Fish User)
# FNM init
fnm env | source
fnm env --use-on-cd | source

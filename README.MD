# Terminal Setup

My personal terminal setup

[My Mac setup](https://github.com/kdbaustert/personal-mac-setup)

![Screenshot](https://github.com/kdbaustert/personal-termial-setup/blob/master/screenshot/ScreenShot.png)

# Packages

### [iTerm2](https://www.iterm2.com)

### [Prezto](https://github.com/sorin-ionescu/prezto)

### [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

### [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

# Font

### [Fura Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraMono) (patched font)

# Theme

### [Dracula](https://draculatheme.com/iterm/)

# Settings

```
POWERLEVEL9K_MODE="nerdfont-complete"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# POWERLEVEL9K_VCS_SHORTEN_LENGTH=4
# POWERLEVEL9K_VCS_SHORTEN_MIN_LENGTH=11
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
# POWERLEVEL9K_CUSTOM_RTAB_DIR="echo ${${:-/${(j:/:)${(M)${(s:/:)${(D)PWD:h}}#(|.)[^.]}}/${PWD:t}}//\/~/\~}"

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d2 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
POWERLEVEL9K_VCS_BRANCH_ICON=$''
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# Status
POWERLEVEL9K_OK_ICON=$'\uf62b'
POWERLEVEL9K_FAIL_ICON=$'\uf467'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'

VCS_GIT_GITHUB_ICON=$'\uf7a3'
LARAVEL_ICON=$'\ue73f'
NODE_ICON=$'\ue719'
POWERLEVEL9K_NODE_VERSION_ICON=$'\ue719'
os_icon=$'\uf302'

# User
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='cyan'

POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=$'\ue5fe'
POWERLEVEL9K_FOLDER_ICON=''

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{green}%F{black} NEXT \uf101 %f%F{green}%k\ue0b0%f"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user root_indicator dir vcs ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status laravel_version node_version ram)
```

# Aliases

```
# Common aliases
alias fixdb='mkdir /usr/local/etc/my.cnf.d/'
alias zshconfig='code ~/.zshrc'
alias zprezconfig='code ~/.zpreztorc'
alias vscustom='code ~/.vscode-custom.css'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias myip='curl http://ipecho.net/plain; echo'
alias wget='wget -c'
alias installvaletplus='valet install --with-mariadb'

# Directories
alias root='cd /'
alias dtop='cd ~/Desktop'
alias dbox='cd ~/Dropbox'
alias box='cd ~/Box\ Sync'

# YO Generators
alias newWebApp='yo webapp'

# Code configs copy
alias copygitignore='cp ~/Dropbox/Codeconfigs/.gitignore .'
alias copypret='cp ~/Dropbox/Codeconfigs/.prettierrc .'

# SSH
alias sshconfig='cd ~/.ssh; code config'
alias sshkeygen='ssh-keygen -t rsa'
alias copyssh='ssh-copy-id -i ~/.ssh/id_rsa.pub'
alias fixssh1='sudo chmod 600 ~/.ssh/id_rsa.pub'
alias fixssh2='sudo chmod 600 ~/.ssh/id_rsa'
alias killssh='killall ssh'

## Removed other ssh info

# WordPress
alias wpcon='cd wp-content'
alias newwp='wp core download'
alias newwpconfig='wp config create'
alias wpinstall='wp core install'

# Node.js
alias npmglist='npm list -g --depth 0'
alias npmg='npm install -g'
alias npmi='npm install'
alias npmold='npm outdated'
alias npmd='npm update'
alias npms='npm install --save'
alias npmsd='npm install --save-dev'
alias npmlint='npm run lint'
alias npmslint='npm run stylelint'
alias npmpc='npm run precommit'
alias npmrd='npm run build:dev'
alias npmrp='npm run build:prod'
alias npmrw='npm run watch'
alias npmu='npm run uninstall'

# Git
alias gclone='git clone'
alias gac='git add . && git commit -a -m '
alias gic='git add . && commit -m "Initial commit"'
alias gi='git init'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gs='git status'
alias gpl='git pull'

# Composer
alias ci='composer install'
alias cu='composer update'
alias cgu="composer global update"
alias cda='composer dump-autoload -o'
alias cc='composer clear-cache'

# Laravel
alias newlar='laravel new'
alias art='php artisan'
alias arttinker='php artisan tinker'

# Laravel Database
alias artm='php artisan migrate'
alias artmf='php artisan migrate:fresh'
alias artmrf='php artisan migrate:refresh'
alias artmrfs='php artisan migrate:refresh --seed'

# Laravel Tests
alias artftest='php artisan make:test'
alias artut='php artisan make:test --unit'

# Laravel Makers
alias art='php artisan'
alias artmc='php artisan make:controller'
alias artme='php artisan make:event'
alias artmmo='php artisan make:model'
alias artmm='php artisan make:migration:schema'
alias artmp='php artisan make:migration:pivot'
alias artms='php artisan make:seed'
alias artmpr='php artisan make:provider'
alias artrl='php artisan route:list'

# PHP code sniffer
alias codewp='phpcs --config-set default_standard WordPress'
alias codelaravel='phpcs --config-set default_standard Laravel'

# Valet
alias vls='valet links'
alias vl='valet link'
alias vul='valet unlink'
alias vs='valet secure'
alias vsh='valet share'

# Brew
alias brewupdate='brew update; brew upgrade; brew cleanup; brew doctor'
alias brewservicesall='brew services restart --all'
alias brewclean='brew cleanup'
```

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
export PATH=$PATH:~/.composer/vendor/bin
export PATH="/usr/local/opt/icu4c/bin:$PATH"

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

#User
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='cyan'

POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=$'\ue5fe'
POWERLEVEL9K_FOLDER_ICON=''

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{white}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{green}%F{black} NEXT \uf101 %f%F{green}%k\ue0b0%f"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user ssh root_indicator dir vcs ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status laravel_version node_version ram)

#Common aliases
alias zshconfig='code ~/.zshrc'
alias zprezconfig='code ~/.zpreztorc'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias ..='cd ..'
# Go up two directories
alias ...='cd ../..'
# Go up three directories
alias ....='cd ../../..'
# Go up four directories
alias .....='cd ../../../..'
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo '
alias myip='curl http://ipecho.net/plain; echo'
alias webpacktemp='git clone https://github.com/kdbaustert/webpack4-bolierplate.git'
alias wordpresstemp='git clone https://github.com/kdbaustert/wordpress-template-boilerplate.git'

#SSH (REMOVED)


#WordPress
alias wpcon='cd wp-content'

#Node.js
alias npmi='npm install'
alias npmold='npm outdated'
alias npmd='npm update'
alias npms='npm install --save'
alias npmsd='npm install --save-dev'
alias npmlint='npm run lint'
alias npmslint='npm run stylelint'
alias npmpc='npm run precommit'
alias npmrd='npm run build:dev' # I use npm run build:dev flags watch
alias npmrp='npm run build:prod' # I use npm run build:prod
alias npmrw='npm run watch'
alias npmu='npm run uninstall'

#Git
alias gcl='git clone'
alias gi='git init'
alias ga='git add .'
alias gic='git add commit -m "Initial commit"'
alias gc='git commit -m'
alias gp='git push'
alias gs='git status'
alias gpl='git pull'

#Composer
alias ci='composer install'
alias cu='composer update'
alias cda='composer dump-autoload -o'

#Laravel
alias newlar='laravel new'
alias art='php artisan'
alias arttinker='php artisan tinker'

#Database
alias artrmigrate='php artisan migrate'
alias artrfresh='php artisan migrate:fresh'
alias artrfreshseed='php artisan migrate:fresh --seed'

# Makers
alias art='php artisan'
alias artmc='php artisan make:controller'
alias artme='php artisan make:event'
alias artmmo='php artisan make:model'
alias artmm='php artisan make:migration:schema'
alias artmp='php artisan make:migration:pivot'
alias artms='php artisan make:seed'
alias artmpr='php artisan make:provider'
alias artrl='php artisan route:list'

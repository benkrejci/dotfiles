# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Set colors for LS_COLORS.
eval `dircolors ~/.dircolors`

export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Duolingo CLI - https://github.com/duolingo/cli
. "${HOME}/.duolingo/init.sh"

export AWS_ACCESS_KEY_ID="AKIA5VZTLOI2LVOZ647C"
export AWS_SECRET_ACCESS_KEY="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"

export PATH=$PATH:/Users/krejci/node_modules/.bin

#export PATH="$HOME/.pyenv/bin:$PATH"
#export PATH="/usr/local/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"

export GOOGLE_CREDENTIALS_INFO='{"type":"service_account","project_id":"excess-etl","private_key_id":"0fdbd01a594d81ad1106cfda6096a4c80c801df6","private_key":"-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCWL+uysXfbY+Ua\nXMwRmFOScsgduOmvLuUif6fcMDXBsGXUkYJK4QToZxz2f0At/swO92EsXf+xhX32\n/ccolQPhq6Vys9BDGPEYfV0aK26Gl3DsNw6bYrVGDvFbXoG5qVopPgG5tWzzVpO/\nUfOkQrPQuO2LqpFSdSG6hURDpam0eXs0KfCjBMB7xGxQzgx1qO6Rs0455Vl4/kFu\nkMQAKohJCFpF2aAc8d3t16tzgeSVRp7JhePjXrO2y7iIfxAOyF0E+02PxhyAA1ca\nYJmzvX2aelsnIsQ/Ax/8MiTtAnWp9wzB9nAFqX9/GIk0BlzYekJ+wnb7qg5SiU6Z\n39kruVtbAgMBAAECggEAGJqsKd+iC5qPb2Sxd9Z1JoJQX3IqMm1j02WHae6p99u+\nqvbVmg/IHoy59XX+XSqnYnJLhJm3qGz+qGaF6JOVCbT1i1eC8GMXKFRtWrqvxjPs\nJ36TkYg3u0z6ZGYUqYZhg20pmjNrMGhIFylFWW0mCTUqkV11pkUTK/vmJZDvvuWB\npYNnnb5tkUSCYDriNXSGu+9TwZopfuuEd9hPhm/BvESK8j1Hr4RwmwFOYGo1o5Br\nkiWHKdCCG0X8uyXqdoU2l3uk6ebShZFlJau/mKmrH5LB2NEJn2m7yiJg1WtUjqra\nEeZURS5ls7qW60+eBUvTQM1qnyTjynB3iWSuz8GKsQKBgQDNVWR1L62WmlUwW52x\nDWDCgNT5hSerlqd95259vtB+Gj5Qtt47XMetbAzBGWcTxa2diKgY7PxF9smHcEOP\nudYfl1bKw9OPPazTFHRDFhhtV7GuoqtS/9xjiR6w/xoiLg5ZAA0tBdrzqGyGCfxT\nzBI29PrmMfhtn/Sdpxz7piS08QKBgQC7PwQd943IVJ9fIjxaHJiFhGcSMfWH/oWn\nzPpZ1k9LQ5w3WBBp6u0D2UQd5a9Texr8lx6LowWqeUX95gma9H5VBGPZRwMZ7ccN\nxIu0X0NI6IB27TEUmjbu6Aa7nu7Aqk+2zbFFrnKMHyaBwPtsTP3FipkelgkpBGgs\n2z7xrurlCwKBgQCwxBmWdLQo2bYKymQnvs+UwloWcNYk9q48Slcpc3KDjM4mqDcK\nvaW8my8jsV22fNAotTOZObM3++ukaDYRbjdyvNNf/VOMldjJYmtwMX5X602wfKOm\n8VNmcO32C7cQw7tgTRYKs2a5qj266q/J5/2qSB4Su+QVY8WvTuU5kt840QKBgAWe\ns5Huryu3Fn11epg9yXogajOKmlL1ma9aoJz3qLOamOK0WvHC4lA+QiQfk66OwFWa\nd4k7YF0ofKhNMjabZftJQXHxBq/Nii7omkTUoyFaERkAr3tt0X5EKoeREptnwTK8\nY7iyrq9z8+TrFODAQtGeAlB/slCv2CyYfAAm/tfXAoGBAL4S4GdTQDRIkpSwfftz\nx4zxoviwq8Oz25dibEq8HJ9nVAycwSCjsQr3t6ecPeYMAWuk/lFYDEOSStCE8CXM\nFLWuhubmWhP2xPnOvV6VSlXu8gJqJ9fGfBx8Mbvy3prtbY+pk3k4VMhU6AyFVvCE\ndu7qjXM/UzFcixMX3w+huaqw\n-----END PRIVATE KEY-----\n","client_email":"experiment-report-local@excess-etl.iam.gserviceaccount.com","client_id":"100020742584509655889","auth_uri":"https://accounts.google.com/o/oauth2/auth","token_uri":"https://oauth2.googleapis.com/token","auth_provider_x509_cert_url":"https://www.googleapis.com/oauth2/v1/certs","client_x509_cert_url":"https://www.googleapis.com/robot/v1/metadata/x509/experiment-report-local%40excess-etl.iam.gserviceaccount.com"}'

# web merge master (and fix string conflicts)
function wmm() {
  main="master"
  branch="$(git branch --show-current)"
  if [[ "$branch" == "$main" ]]; then
    echo "Already on $main"
    return 1
  fi
  git checkout "$main" &&\
    git fetch &&\
    git merge --ff-only &&\
    git checkout "$branch" &&\
  if ! git merge "$main"; then
    git rm -f src/strings/\*.duostrings &&\
      make download-strings &&\
      git add src/strings/\*.duostrings
      git status
  fi
}




export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$PATH:$(yarn global bin)"



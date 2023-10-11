# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export "PATH=$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"

# ZSH configuration file.

# Set command aliases.
alias ls='lsd'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias cat='bat'
alias diff='diff --color=auto'
alias grep='grep --color=auto'

alias ytd='youtube-dl'
alias ytdl='ytd --add-metadata -ic -f best'
alias yta='ytdl -x -f bestaudio/best'

alias lock='i3lock-fancy'

# Set the name of the theme to load.
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set Powerlevel10k font mode.
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt settings.
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}╭─"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}╰❯%f "
POWERLEVEL9K_TRANSIENT_PROMPT=always

# Set separator icons.
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR_ICON=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0b1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR_ICON=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR_ICON=$'\ue0b7'

# OS Segment settings.
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{cyan} ~ %F{white} Arch %F{cyan}Linux%f'

# VCS icons.
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d2 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
POWERLEVEL9K_VCS_BRANCH_ICON=$''
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colors.
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'

# More colors.
POWERLEVEL9K_CUSTOM_USER_BACKGROUND='yellow'
POWERLEVEL9K_CUSTOM_USER_FOREGROUND='black'

# Status icons.
POWERLEVEL9K_STATUS_OK_ICON=$'\uf164'
POWERLEVEL9K_STATUS_ERROR_ICON=$'\uf165'
POWERLEVEL9K_STATUS_ERROR_CR_ICON=$'\uf165'

# Set prompt elements.
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_user dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs status command_execution_time virtualenv)

# Display customized user skull with a cog next to the name.
display_username_with_cog() {
    echo -n "\u2699 $(whoami | grep -v '^root\$')"
}
POWERLEVEL9K_CUSTOM_USER="display_username_with_cog"

# Auto-correction for commands.
ENABLE_CORRECTION="true"

# Command execution timestamp in history command output.
HIST_STAMPS="mm/dd/yyyy"
DISABLE_LS_COLORS="true"

# Plugins to load.
plugins=(
  colorize
  copyfile
  dotenv
  emacs
  emoji
  git
  gitfast
  gpg-agent
  safe-paste
  virtualenv
)

setopt HIST_IGNORE_SPACE
autoload -U compinit && compinit
source ~/.oh-my-zsh/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable Powe:rlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/lockna/.oh-my-zsh"
export PATH=$HOME/.local/bin:~/.npm-global/bin:$PATH:/opt/depot_tools
export GPG_TTY=$(tty)
# Path to your oh-my-zsh installation.
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

ENABLE_CORRCTION="true"

plugins=(
	colorize
	copyfile
	dotenv
	git
	gitfast
	safe-paste
	virtualenv
	zsh-autosuggestions
)


setopt HIST_IGNORE_SPACE
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh

# User configuration


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'
export LC_ALL="en_US.UTF-8"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pacmaninstall="pacman -Slq | fzf -m --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias aurinstall="yay -Slq | fzf -m --preview 'yay -Si {1}'| xargs -ro yay -S"
alias lock="i3lock-fancy"
alias open="xdg-open"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
source ~/.config/zsh/env.zsh
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/basic.zsh
source ~/.config/zsh/vi.zsh

#source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.config/zsh/plugins/autojump/bin/autojump.zsh
#source ~/.config/zsh/plugins/git-open/git-open.plugin.zsh

#source ~/zshrc
# Enable colors and change prompt:
#autoload -U colors && colors	# Load colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "



# Powerlevel10k junit
source /home/xox/.config/zsh/themes/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.zinit/bin/zinit.zsh
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
bindkey ',' autosuggest-accept
zinit light wting/autojump
zinit light paulirish/git-open
zinit light psprint/zsh-select

# 初始化补全
autoload -Uz compinit; compinit
# zinit 出于效率考虑会截获 compdef 调用，放到最后再统一应用，可以节省不少时间
zinit cdreplay -q

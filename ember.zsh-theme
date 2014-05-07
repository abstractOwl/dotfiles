# ember theme for ZSH

# Git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓"

# Prompt
PROMPT="%{$fg_bold[green]%}λ> %{$reset_color%}"
RPROMPT=" %{$fg_bold[cyan]%}%~/ ${git_info}%{$reset_color%}"


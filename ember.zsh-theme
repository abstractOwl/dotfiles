# ember theme for ZSH

# Git
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓"

# Prompt
PROMPT="%{$terminfo[bold]$fg[white]%}λ> %{$reset_color%}"
RPROMPT=" %{$terminfo[bold]$fg[white]%}%~/ ${git_info}%{$reset_color%}"

